import jwt from 'jsonwebtoken';

interface JwtPayload {
  id: string;
}

export const signToken = (payload: JwtPayload): string => {
  return jwt.sign(payload, process.env.JWT_SECRET!, { expiresIn: '30d' });
};

export const verifyToken = (token: string): JwtPayload => {
  return jwt.verify(token, process.env.JWT_SECRET!) as JwtPayload;
}; 