import { Request, Response, NextFunction } from 'express';
import jwt from 'jsonwebtoken';
import { User } from '../models/user.model';

interface AuthenticatedRequest extends Request {
  user?: {
    _id: string;
  };
}

export const authMiddleware = async (req: AuthenticatedRequest, res: Response, next: NextFunction): Promise<void> => {
  try {
    const token = req.headers.authorization?.split(' ')[1];
    if (!token) {
      res.status(401).json({ message: 'No token provided' });
      return;
    }

    const decoded = jwt.verify(token, process.env.JWT_SECRET || '') as { _id: string };
    const user = await User.findById(decoded._id);
    if (!user) {
      res.status(401).json({ message: 'User not found' });
      return;
    }

    req.user = { _id: user._id.toString() };
    next();
  } catch (error) {
    res.status(401).json({ message: 'Invalid token' });
  }
}; 