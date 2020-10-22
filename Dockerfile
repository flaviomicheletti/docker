#
# see https://docs.docker.com/get-started/nodejs/build-images/
# 

# Use the official image as a parent image.
FROM node:12.18.1

ENV NODE_ENV=production

# Set the working directory.
WORKDIR /app

# Copy the file from your host to your current location.
COPY ["package.json", "package-lock.json*", "./"]

# Run the command inside your image filesystem.
RUN npm install --production

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Run the specified command within the container.
CMD [ "node", "server.js" ]
