# Base Image
FROM node:alpine
# Specify working directory
WORKDIR /usr/app
# Copy package.json into the container
COPY ./package.json ./
COPY ./package-lock.json ./
# Install dependencies
RUN npm install
# Copy other project files into the container
COPY ./ ./
# Default command
CMD [ "npm", "start" ]