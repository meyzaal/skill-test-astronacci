import { Request } from 'express';
import { Document, Types } from 'mongoose';

export interface IUser extends Document {
  _id: Types.ObjectId;
  name: string;
  email: string;
  password: string;
  avatar?: string;
  bio?: string;
  isVerified: boolean;
  comparePassword(candidatePassword: string): Promise<boolean>;
}

export interface AuthRequest extends Request {
  user?: {
    _id: string;
    id?: string;
  };
}

export interface RegisterBody {
  name: string;
  email: string;
  password: string;
}

export interface LoginBody {
  email: string;
  password: string;
}

export interface ResetPasswordBody {
  resetToken: string;
  newPassword: string;
}

export interface UpdateProfileBody {
  name?: string;
  bio?: string;
}

export interface PaginationQuery {
  page?: string;
  limit?: string;
  search?: string;
} 