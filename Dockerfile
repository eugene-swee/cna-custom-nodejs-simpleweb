# Use Alpine Linux as the base image
FROM alpine:3.19

# Set the working directory in the container
WORKDIR /app

# Install Node.js and npm
RUN apk add --update nodejs npm

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose a port if your application needs it
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
