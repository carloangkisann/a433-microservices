# Use Node.js version 14 as the base image
FROM node:14

# Set the working directory for the container
WORKDIR /app

# Copy all source code into the working directory
COPY . .

# Run the app in production mode and use the item-db container as the database host
ENV NODE_ENV=production DB_HOST=item-db

# Install production dependencies and build the app
RUN npm install --production --unsafe-perm && npm run build

# Expose the port used by the app
EXPOSE 8080

# Start the server when the container launches
CMD ["npm", "start"]
