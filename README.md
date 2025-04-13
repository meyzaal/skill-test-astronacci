# Skill Test - Astronacci International

This repository contains the source code for the skill test project for Astronacci International. The application is divided into two parts:

- **user-app-backend/**: Backend REST API built using Express.js with TypeScript and MongoDB.
- **user-app-mobile/**: Mobile application built using Flutter with state management.

## 📱 Download APK

You can download the latest APK version of the application here:

[📥 Download APK](https://drive.google.com/file/d/16GV5yptfbhCtzbjWmhFPpAB_WG-1KLHm/view?usp=sharing)

## 📌 Features

The application includes the following features:

- Register, Login, and Forgot Password
- Edit User Profile (with Avatar Upload & Optional Cropping)
- User List with Search and Pagination
- User Detail View
- Logout Functionality

## 📦 Tech Stack

### Backend (user-app-backend/)
- Express.js with TypeScript
- MongoDB (via Mongoose)
- JWT Authentication
- Multer for file uploads
- Dotenv for environment configuration
- Validation middleware for request handling
- Error handling middleware
- RESTful API endpoints

### Mobile (user-app-mobile/)
- Flutter
- State Management BloC
- API Integration
- Image Picker and Cropper
- Theme support
- Authentication flow
- User profile management
- User list with search functionality

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/skill-test-astronacci.git
cd skill-test-astronacci
```

### 2. Setup Backend

```bash
cd user-app-backend
npm install
cp .env.example .env
# Update .env with your MongoDB URI and JWT secret
npm run dev
```

### 3. Setup Mobile

```bash
cd ../user-app-mobile
flutter pub get
flutter run
```

## ☁️ Deployment

The backend is deployed for free using **Render**. You can access the live API via the following URL (replace with your deployed link):

```
https://user-app-api.onrender.com/
```

## 📂 Directory Structure

```
skill-test-astronacci/
├── user-app-backend/     # Express.js backend (TypeScript)
│   ├── src/
│   │   ├── controllers/  # API controllers
│   │   ├── middlewares/  # Custom middlewares
│   │   ├── models/       # Database models
│   │   ├── routes/       # API routes
│   │   └── utils/        # Utility functions
├── user-app-mobile/      # Flutter frontend app
│   ├── lib/
│   │   ├── app/         # App configuration
│   │   ├── authentication/ # Auth features
│   │   ├── home/        # Home screen
│   │   ├── profile/     # Profile features
│   │   ├── sign_in/     # Sign in features
│   │   ├── sign_up/     # Sign up features
│   │   └── users/       # User list features
│   └── packages/        # Custom packages
└── README.md            # Project overview and setup guide
```

## 🧑‍💻 Author

- Meyza Ulil Albab - Mobile App Developer

This project was submitted as part of a skill test for Astronacci International.

---
Feel free to explore and enhance this project further!