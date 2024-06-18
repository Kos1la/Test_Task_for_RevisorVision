# Use the official Node.js image
FROM node:18

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image
COPY package*.json ./

# Install production dependencies
RUN npm install

# Copy local code to the container image
COPY . .

# Generate Prisma Client
RUN npx prisma generate

# Start the application
CMD [ "npm", "start" ]
