import { Router, Request, Response, RequestHandler, NextFunction } from 'express';
import jwt from 'jsonwebtoken';
import { User } from '../models/user.model';
import { authMiddleware } from '../middlewares/auth.middleware';
import { body, validationResult } from 'express-validator';
import { signToken } from '../utils/jwt';
import { validateRequest } from '../middlewares/validation.middleware';
import { IUser } from '../types';
import { generateOtp, validateOtp } from '../services/otp.service';
import { sendOtpEmail } from '../services/email.service';
import { AuthRequest } from '../types';

const router = Router();

interface RegisterBody {
  name: string;
  email: string;
  password: string;
}

interface LoginBody {
  email: string;
  password: string;
}

// Register validation rules
const registerValidation = [
  body('name')
    .trim()
    .notEmpty()
    .withMessage('Name is required')
    .isLength({ min: 2, max: 50 })
    .withMessage('Name must be between 2 and 50 characters'),
  body('email')
    .trim()
    .notEmpty()
    .withMessage('Email is required')
    .isEmail()
    .withMessage('Invalid email format')
    .custom(async (email) => {
      const user = await User.findOne({ email });
      if (user) {
        throw new Error('Email already in use');
      }
    }),
  body('password')
    .trim()
    .notEmpty()
    .withMessage('Password is required')
    .isLength({ min: 6 })
    .withMessage('Password must be at least 6 characters long')
    .matches(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)/)
    .withMessage('Password must contain at least one uppercase letter, one lowercase letter, and one number')
];

// Register
router.post('/register', registerValidation, validateRequest, async (req: AuthRequest, res: Response, next: NextFunction): Promise<void> => {
  try {
    const { name, email, password } = req.body;

    const user = new User({
      name,
      email,
      password,
      avatar: `https://ui-avatars.com/api/?name=${encodeURIComponent(name)}&background=random`,
      isVerified: false
    }) as IUser;

    await user.save();

    const token = signToken({ id: user._id.toString() });

    res.status(201).json({
      user: {
        id: user._id.toString(),
        name: user.name,
        email: user.email,
        avatar: user.avatar,
        isVerified: user.isVerified
      },
      token
    });
  } catch (error) {
    next(error);
  }
});

// Login validation rules
const loginValidation = [
  body('email')
    .trim()
    .notEmpty()
    .withMessage('Email is required')
    .isEmail()
    .withMessage('Invalid email format'),
  body('password')
    .trim()
    .notEmpty()
    .withMessage('Password is required')
];

// Login
router.post('/login', loginValidation, validateRequest, async (req: AuthRequest, res: Response, next: NextFunction): Promise<void> => {
  try {
    const { email, password } = req.body;

    const user = await User.findOne({ email });
    if (!user) {
      res.status(400).json({ message: 'Invalid credentials' });
      return;
    }

    const isMatch = await user.comparePassword(password);
    if (!isMatch) {
      res.status(400).json({ message: 'Invalid credentials' });
      return;
    }

    if (!user.isVerified) {
      res.status(403).json({ message: 'Please verify your email first' });
      return;
    }

    const token = signToken({ id: user._id.toString() });

    res.json({
      user: {
        id: user._id.toString(),
        name: user.name,
        email: user.email,
        avatar: user.avatar,
        bio: user.bio,
        isVerified: user.isVerified
      },
      token
    });
  } catch (error) {
    next(error);
  }
});

// Logout
router.post('/logout', authMiddleware, async (req: AuthRequest, res: Response, next: NextFunction): Promise<void> => {
  try {
    res.json({ message: 'Logged out successfully' });
  } catch (error) {
    next(error);
  }
});

// Generate OTP for email verification
router.post('/verify-email', authMiddleware, async (req: AuthRequest, res: Response): Promise<void> => {
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

    if (user.isVerified) {
      res.status(400).json({ message: 'Email already verified' });
      return;
    }

    const otpToken = await generateOtp(userId, 'verify-email');
    await sendOtpEmail({ email: user.email, name: user.name }, {
      code: otpToken,
      type: 'verify-email',
      userId: userId.toString(),
      expiresAt: new Date(Date.now() + 10 * 60 * 1000)
    });
    res.json({ message: 'OTP sent successfully' });
  } catch (error) {
    console.error('Error generating OTP:', error);
    res.status(500).json({ message: 'Internal server error' });
  }
});

// Validate OTP for email verification
router.post('/verify-email/validate', authMiddleware, async (req: AuthRequest, res: Response): Promise<void> => {
  try {
    const { code } = req.body;
    const userId = req.user?._id;
    if (!userId || !code) {
      res.status(400).json({ message: 'Missing required fields' });
      return;
    }

    const isValid = await validateOtp(userId, code, 'verify-email');
    if (!isValid) {
      res.status(400).json({ message: 'Invalid or expired OTP' });
      return;
    }

    await User.findByIdAndUpdate(userId, { isVerified: true });
    res.json({ message: 'Email verified successfully' });
  } catch (error) {
    console.error('Error validating OTP:', error);
    res.status(500).json({ message: 'Internal server error' });
  }
});

// Generate OTP for password reset
router.post('/forgot-password', async (req: AuthRequest, res: Response): Promise<void> => {
  try {
    const { email } = req.body;
    if (!email) {
      res.status(400).json({ message: 'Email is required' });
      return;
    }

    const user = await User.findOne({ email });
    if (!user) {
      res.status(404).json({ message: 'User not found' });
      return;
    }

    const otpToken = await generateOtp(user._id.toString(), 'forgot-password');
    await sendOtpEmail({ email: user.email, name: user.name }, {
      code: otpToken,
      type: 'forgot-password',
      userId: user._id.toString(),
      expiresAt: new Date(Date.now() + 10 * 60 * 1000)
    });
    res.json({ message: 'OTP sent successfully' });
  } catch (error) {
    console.error('Error generating OTP:', error);
    res.status(500).json({ message: 'Internal server error' });
  }
});

// Validate OTP for password reset
router.post('/forgot-password/validate', async (req: AuthRequest, res: Response): Promise<void> => {
  try {
    const { email, code, newPassword } = req.body;
    if (!email || !code || !newPassword) {
      res.status(400).json({ message: 'Missing required fields' });
      return;
    }

    const user = await User.findOne({ email });
    if (!user) {
      res.status(404).json({ message: 'User not found' });
      return;
    }

    const isValid = await validateOtp(user._id.toString(), code, 'forgot-password');
    if (!isValid) {
      res.status(400).json({ message: 'Invalid or expired OTP' });
      return;
    }

    user.password = newPassword;
    await user.save();
    res.json({ message: 'Password reset successfully' });
  } catch (error) {
    console.error('Error validating OTP:', error);
    res.status(500).json({ message: 'Internal server error' });
  }
});

export default router; 