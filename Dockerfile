FROM node:23-alpine3.19

WORKDIR /app

# Copy the package.json and package-lock.json first
COPY package.json ./
COPY package-lock.json ./

# Install dependencies
RUN npm install
RUN npm install -g nodemon  # Install nodemon globally

# Copy the rest of the application files
COPY src /app/src

# Expose the required port
EXPOSE 3000

# Run the server
CMD ["npx", "nodemon", "src/server.js"]
