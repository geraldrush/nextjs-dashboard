FROM node:20-slim

# Create app directory
WORKDIR /app

# Install pnpm globally
RUN npm install -g pnpm

# Copy package.json and pnpm-lock.yaml
COPY package.json pnpm-lock.yaml ./

# Install dependencies
RUN pnpm install --frozen-lockfile

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Build the Next.js app if needed (for production)
RUN pnpm build

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run the app when the container launches
CMD ["pnpm", "start"]