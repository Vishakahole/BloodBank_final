# Use an official Node runtime as a parent image
FROM node:18.15.0

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the current directory contents into the container at /app
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Define environment variable
ENV NODE_ENV production

# Command to run your application
CMD ["npm", "run", "server"]
