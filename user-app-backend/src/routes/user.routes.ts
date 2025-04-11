import { Router, Request, Response, NextFunction } from 'express';
import { User } from '../models/user.model';
import { authMiddleware } from '../middlewares/auth.middleware';
import upload from '../config/multer';
import cloudinary from '../config/cloudinary';
import fs from 'fs';
import path from 'path';

const router = Router();

interface UpdateProfileBody {
  name?: string;
  bio?: string;
}

interface AuthRequest extends Request {
  user: {
    id: string;
  };
}

// List Users with Search & Pagination
router.get('/users', authMiddleware, async (req: Request, res: Response, next: NextFunction): Promise<void> => {
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
      users,
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
router.put('/users/:id', authMiddleware, upload.single('avatar'), async (req: Request, res: Response, next: NextFunction): Promise<void> => {
  try {
    const { id } = req.params;
    const { name, bio } = req.body as UpdateProfileBody;
    const authReq = req as AuthRequest;

    // Check if user exists and is authorized
    const user = await User.findById(id).lean();
    if (!user) {
      res.status(404).json({ message: 'User not found' });
      return;
    }

    if (user._id.toString() !== authReq.user.id) {
      res.status(403).json({ message: 'Not authorized' });
      return;
    }

    // Update basic fields
    if (name) user.name = name;
    if (bio) user.bio = bio;

    // Handle avatar upload if present
    if (req.file) {
      try {
        // Upload to Cloudinary
        const result = await cloudinary.uploader.upload(req.file.path, {
          folder: 'avatars',
        });

        // Update avatar URL
        user.avatar = result.secure_url;

        // Delete temporary file
        fs.unlinkSync(req.file.path);
      } catch (error) {
        console.error('Error uploading to Cloudinary:', error);
        res.status(500).json({ message: 'Error uploading avatar' });
        return;
      }
    }

    await User.findByIdAndUpdate(id, user);

    res.json({
      user: {
        id: user._id,
        name: user.name,
        email: user.email,
        avatar: user.avatar,
        bio: user.bio,
      },
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Server error' });
  }
});

// Get User Detail
router.get('/users/:id', async (req: Request, res: Response, next: NextFunction): Promise<void> => {
  try {
    const user = await User.findById(req.params.id).select('-password');
    if (!user) {
      res.status(404).json({ message: 'User not found' });
      return;
    }
    res.json(user);
  } catch (error) {
    next(error);
  }
});

export default router; 