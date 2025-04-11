import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';
import connectDB from './config/db';
import authRoutes from './routes/auth.routes';
import userRoutes from './routes/user.routes';
import fs from 'fs';
import path from 'path';
import { errorHandler } from './middlewares/error.middleware';

// Load environment variables
dotenv.config();

// Create uploads directory if it doesn't exist
const uploadsDir = path.join(__dirname, '..', 'uploads');
if (!fs.existsSync(uploadsDir)) {
  fs.mkdirSync(uploadsDir);
}

// Create Express app
const app = express();
const PORT = process.env.PORT || 3000;

// Connect to MongoDB
connectDB();

// Middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Routes
app.use('/api/auth', authRoutes);
app.use('/api', userRoutes);

// Basic route
app.get('/', (req, res) => {
  res.json({ message: 'Welcome to the User App API' });
});

// Error handling middleware
app.use(errorHandler);

// Start server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
}); 