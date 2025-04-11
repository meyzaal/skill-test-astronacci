import { Resend } from 'resend';

interface OtpEmailData {
  code: string;
  type: 'verify-email' | 'forgot-password';
  userId: string;
  expiresAt: Date;
}

const resend = new Resend(process.env.RESEND_API_KEY);

export async function sendOtpEmail(user: { email: string; name: string }, otpData: OtpEmailData) {
  const subject = otpData.type === 'verify-email' 
    ? 'Verify your email address'
    : 'Reset your password';

  const html = `
    <div style="font-family: Arial, sans-serif; max-width: 600px; margin: 0 auto;">
      <h2>Hello ${user.name},</h2>
      <p>Your OTP code is: <strong>${otpData.code}</strong></p>
      <p>This code will expire in 10 minutes.</p>
      <p>If you didn't request this, please ignore this email.</p>
      <br>
      <p>Best regards,<br>Your App Team</p>
    </div>
  `;

  try {
    await resend.emails.send({
      from: 'Your App <noreply@yourdomain.com>',
      to: user.email,
      subject,
      html
    });
  } catch (error) {
    console.error('Error sending email:', error);
    throw new Error('Failed to send OTP email');
  }
} 