FROM node:20-alpine

WORKDIR /app

RUN apk add --no-cache git ca-certificates

COPY scripts/ ./scripts/

EXPOSE 5173

CMD ["node", "scripts/static-supervisor.js"]
