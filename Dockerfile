# Use official Node.js image.
FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the app source code
COPY . .

# Start the app
CMD ["npm", "start"]

# App listens on port 8080 by default
EXPOSE 8080
