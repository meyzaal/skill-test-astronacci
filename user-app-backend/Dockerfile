# Use Node.js LTS version
FROM node:18-alpine

# Set working directory
WORKDIR /app/user-app-backend

# Copy package files first for better caching
COPY user-app-backend/package*.json ./

# Install dependencies with Railway's cache format
RUN --mount=type=cache,id=s/3f27754d-24f7-40ef-b843-9eb7d4de2037-node_modules/cache,target=/app/user-app-backend/node_modules/.cache \
    npm install

# Copy the rest of the application
COPY user-app-backend/ ./

# Build the application with Railway's cache format
RUN --mount=type=cache,id=s/3f27754d-24f7-40ef-b843-9eb7d4de2037-node_modules/cache,target=/app/user-app-backend/node_modules/.cache \
    npm run build

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["npm", "start"] 