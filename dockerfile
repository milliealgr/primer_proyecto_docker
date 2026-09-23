FROM node:26-slim

ENV NODE_ENV=production
WORKDIR /app/src

COPY --chown=node:node src/package.json src/index.js ./

USER node
EXPOSE 3000

CMD ["node", "index.js"]