# Build Stage
FROM node:18-alpine AS build
WORKDIR /app
COPY ./ ./ 
RUN npm ci --only=production

# Final Stage
FROM node:18-alpine
WORKDIR /app
COPY --from=build /app /app
RUN apk --no-cache add curl && rm -rf /var/cache/apk/*
ENV NODE_ENV=production
EXPOSE 3000
CMD ["npm", "start"]
