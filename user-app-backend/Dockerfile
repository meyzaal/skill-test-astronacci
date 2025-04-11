# Use Node.js LTS version
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Print current directory and list files (for debugging)
RUN pwd && ls -la

# Copy package files
COPY user-app-backend/package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY user-app-backend/ ./

# Build the application
RUN npm run build

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["npm", "start"] 