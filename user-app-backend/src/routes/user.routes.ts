import { Router, Request, Response, NextFunction } from 'express';
import { User } from '../models/user.model';
import { authMiddleware } from '../middlewares/auth.middleware';
import upload from '../config/multer';
import cloudinary from '../config/cloudinary';
import fs from 'fs';
import path from 'path';
import { AuthRequest } from '../types';

const router = Router();

interface UpdateProfileBody {
  name?: string;
  bio?: string;
}

// List Users with Search & Pagination
router.get('/users', authMiddleware, async (req: AuthRequest, res: Response, next: NextFunction): Promise<void> => {
  try {
    const { search, page = '1', limit = '10' } = req.query;
    const pageNum = parseInt(page as string);
    const limitNum = parseInt(limit as string);
    const skip = (pageNum - 1) * limitNum;

    let query = {};
    if (search) {
      query = {
        $or: [
          { name: { $regex: search, $options: 'i' } },
          { email: { $regex: search, $options: 'i' } }
        ]
      };
    }

    const [users, total] = await Promise.all([
      User.find(query)
        .select('-password')
        .skip(skip)
        .limit(limitNum),
      User.countDocuments(query)
    ]);

    res.json({
      users: users.map(user => ({
        id: user._id.toString(),
        name: user.name,
        email: user.email,
        avatar: user.avatar,
        bio: user.bio,
        isMe: user._id.toString() === req.user?._id?.toString()
      })),
      pagination: {
        total,
        page: pageNum,
        limit: limitNum,
        totalPages: Math.ceil(total / limitNum)
      }
    });
  } catch (error) {
    next(error);
  }
});

// Edit Profile
router.put('/users/me', authMiddleware, async (req: AuthRequest, res: Response, next: NextFunction): Promise<void> => {
  try {
    const { name, bio } = req.body as UpdateProfileBody;
    const userId = req.user?._id;

    if (!userId) {
      res.status(401).json({ message: 'Unauthorized' });
      return;
    }

    const user = await User.findById(userId);
    if (!user) {
      res.status(404).json({ message: 'User not found' });
      return;
    }

    // Update basic fields
    if (name) user.name = name;
    if (bio) user.bio = bio;

    await user.save();

    res.json({
      user: {
        id: user._id.toString(),
        name: user.name,
        email: user.email,
        avatar: user.avatar,
        bio: user.bio
      }
    });
  } catch (error) {
    next(error);
  }
});

// Update Avatar
router.put('/users/me/avatar', authMiddleware, upload.single('avatar'), async (req: AuthRequest, res: Response, next: NextFunction): Promise<void> => {
  try {
    const userId = req.user?._id;

    if (!userId) {
      res.status(401).json({ message: 'Unauthorized' });
      return;
    }

    const user = await User.findById(userId);
    if (!user) {
      res.status(404).json({ message: 'User not found' });
      return;
    }

    try {
      // Delete old avatar from Cloudinary if exists
      if (user.avatarPublicId) {
        await cloudinary.uploader.destroy(user.avatarPublicId);
        user.avatar = undefined;
        user.avatarPublicId = undefined;
      }

      // If a new file is provided, upload it
      if (req.file) {
        const result = await cloudinary.uploader.upload(req.file.path, {
          folder: 'avatars',
        });

        // Update user's avatar information
        user.avatar = result.secure_url;
        user.avatarPublicId = result.public_id;

        // Delete temporary file
        fs.unlinkSync(req.file.path);
      }

      await user.save();

      res.json({
        user: {
          id: user._id.toString(),
          name: user.name,
          email: user.email,
          avatar: user.avatar,
          bio: user.bio
        }
      });
    } catch (error) {
      console.error('Error handling avatar:', error);
      // Clean up temporary file in case of error
      if (req.file) {
        fs.unlinkSync(req.file.path);
      }
      res.status(500).json({ message: 'Error updating avatar' });
    }
  } catch (error) {
    next(error);
  }
});

// Get User Detail
router.get('/users/:id', authMiddleware, async (req: AuthRequest, res: Response, next: NextFunction): Promise<void> => {
  try {
    const user = await User.findById(req.params.id).select('-password');
    if (!user) {
      res.status(404).json({ message: 'User not found' });
      return;
    }

    res.json({
      user: {
        id: user._id.toString(),
        name: user.name,
        email: user.email,
        avatar: user.avatar,
        bio: user.bio,
        isMe: user._id.toString() === req.user?._id?.toString()
      }
    });
  } catch (error) {
    next(error);
  }
});

// Get current user profile
router.get('users/me', authMiddleware, async (req: AuthRequest, res: Response, next: NextFunction): Promise<void> => {
  try {
    const user = await User.findById(req.user?._id).select('-password -resetToken -resetTokenExpiry');
    if (!user) {
      res.status(404).json({ message: 'User not found' });
      return;
    }

    res.json({
      user: {
        id: user._id.toString(),
        name: user.name,
        email: user.email,
        avatar: user.avatar,
        bio: user.bio,
        isMe: user._id.toString() === req.user?._id?.toString()
      }
    });
  } catch (error) {
    next(error);
  }
});

export default router; 