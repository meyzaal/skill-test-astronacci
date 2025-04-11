# Use Node.js LTS version
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy all files from the current directory
COPY . .

# Move into the backend directory
WORKDIR /app/user-app-backend

# Install dependencies
RUN npm install

# Build the application
RUN npm run build

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["npm", "start"] 