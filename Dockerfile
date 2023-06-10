# Use a Node.js base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and yarn.lock files to the working directory
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code to the working directory
COPY . .

# Set the production environment variable
ENV NODE_ENV=production

# Expose any necessary ports (replace 3000 with the appropriate port)
EXPOSE 3000

# Run the yarn start:prod command
CMD ["yarn", "start:prod"]
