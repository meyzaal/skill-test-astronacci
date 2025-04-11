# Use Node.js LTS version
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files first for better caching
COPY user-app-backend/package*.json ./

# Install dependencies with cache
RUN --mount=type=cache,target=/root/.npm \
    npm install

# Copy the rest of the application
COPY user-app-backend/ ./

# Build the application
RUN npm run build

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["npm", "start"] 