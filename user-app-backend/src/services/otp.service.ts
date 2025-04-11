import { OtpToken } from '../models/otp-token.model';
import crypto from 'crypto';

const OTP_EXPIRY_MINUTES = 10;

export async function generateOtp(userId: string, type: 'verify-email' | 'forgot-password'): Promise<string> {
  // Generate a 6-digit OTP
  const code = crypto.randomInt(100000, 999999).toString();
  
  // Create OTP token
  await OtpToken.create({
    userId,
    code,
    type,
    expiresAt: new Date(Date.now() + OTP_EXPIRY_MINUTES * 60 * 1000)
  });

  return code;
}

export async function validateOtp(userId: string, code: string, type: 'verify-email' | 'forgot-password'): Promise<boolean> {
  const otpToken = await OtpToken.findOne({
    userId,
    code,
    type,
    expiresAt: { $gt: new Date() }
  });

  if (!otpToken) {
    return false;
  }

  // Delete the used OTP token
  await OtpToken.deleteOne({ _id: otpToken._id });
  return true;
}

export async function deleteExpiredOtps(): Promise<void> {
  await OtpToken.deleteMany({
    expiresAt: { $lt: new Date() }
  });
} 