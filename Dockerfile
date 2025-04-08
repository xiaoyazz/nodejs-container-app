# Use the official Node.js image
FROM node:16
# Set the working directory
WORKDIR /usr/src/app
# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install
# Copy the application code
COPY . .
# Expose the app's port
EXPOSE 3000
# Command to run the app
CMD ["node", "server.js"]