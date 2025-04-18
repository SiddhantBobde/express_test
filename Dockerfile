# Use the official Node.js LTS image
FROM node:18

# Create app directory inside container
WORKDIR /app

# Copy dependency files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Start the server
CMD ["node", "index.js"]
