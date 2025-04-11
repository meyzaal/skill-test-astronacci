import { Resend } from 'resend';

const resend = new Resend('re_ZYtc5Wbu_E6ycNFAoV8UutDy4LTdaYMqB');

export const sendVerificationEmail = async (email: string, token: string): Promise<void> => {
  const verificationUrl = `http://localhost:5000/api/auth/verify-email?token=${token}`;
  
  await resend.emails.send({
    from: 'User App <noreply@userapp.com>',
    to: email,
    subject: 'Verify Your Email',
    html: `
      <h1>Welcome to User App!</h1>
      <p>Please verify your email by clicking the link below:</p>
      <a href="${verificationUrl}">Verify Email</a>
      <p>This link will expire in 24 hours.</p>
    `
  });
};

export const sendPasswordResetEmail = async (email: string, token: string): Promise<void> => {
  await resend.emails.send({
    from: 'User App <noreply@userapp.com>',
    to: email,
    subject: 'Reset Your Password',
    html: `
      <h1>Reset Your Password</h1>
      <p>Your password reset token is:</p>
      <h2>${token}</h2>
      <p>Use this token to reset your password. This token will expire in 1 hour.</p>
    `
  });
}; 