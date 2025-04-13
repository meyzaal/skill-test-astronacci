import { Request } from 'express';
import { Document, Types } from 'mongoose';
import { IUser } from '../models/user.model';

export interface AuthRequest extends Request {
  user?: IUser;
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