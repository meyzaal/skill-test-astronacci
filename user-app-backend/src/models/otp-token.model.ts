import { Schema, model, Document, Types } from 'mongoose';

export interface IOtpToken extends Document {
  userId: Types.ObjectId;
  code: string;
  type: 'verify-email' | 'forgot-password';
  expiresAt: Date;
  createdAt: Date;
}

const otpTokenSchema = new Schema<IOtpToken>({
  userId: {
    type: Schema.Types.ObjectId,
    ref: 'User',
    required: true
  },
  code: {
    type: String,
    required: true
  },
  type: {
    type: String,
    enum: ['verify-email', 'forgot-password'],
    required: true
  },
  expiresAt: {
    type: Date,
    required: true
  },
  createdAt: {
    type: Date,
    default: Date.now
  }
});

// Create index for faster queries
otpTokenSchema.index({ userId: 1, code: 1, type: 1 });
otpTokenSchema.index({ expiresAt: 1 }, { expireAfterSeconds: 0 });

export const OtpToken = model<IOtpToken>('OtpToken', otpTokenSchema); 