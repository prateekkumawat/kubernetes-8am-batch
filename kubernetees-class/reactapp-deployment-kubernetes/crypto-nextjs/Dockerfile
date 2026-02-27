# 1️⃣ Build stage
FROM node:18-alpine AS builder
WORKDIR /app

# Copy dependencies
COPY crypto-nextjs/package*.json ./

# Install dependencies
RUN npm ci --legacy-peer-deps

# Copy all files
COPY crypto-nextjs .

# Build Next.js static export
RUN npm run build && npm run export

# 2️⃣ Serve stage
FROM nginx:1.25-alpine

COPY --from=builder /app/out /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
