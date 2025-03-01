# Use Node.js Alpine base image

FROM node:alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json package-lock.json /app/

# Install dependencies
RUN npm install

# Copy the entire project to the working directory
COPY . /app/

# Expose the port the app runs on
EXPOSE 3000


# Define the command to run your app
CMD ["npm", "start"]
