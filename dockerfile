FROM alpine as builder
RUN apk add --update npm
# Default application directory for all subsequent commands (COPY, RUN, CMD etc.).
WORKDIR /app
# Copy package.json and install dependencies.
# Docker will cache node_modules, if package.json and package-lock.json are not changed.
COPY package.json ./
RUN npm install
# Copy source code of the application
COPY . .
EXPOSE 3000
CMD [ "npm", "run", "start" ]