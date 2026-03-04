FROM node:20-alpine

WORKDIR /app

RUN npm install -g serve

COPY index.html ./public/

ENV PORT=3000

CMD ["sh", "-c", "serve public -l tcp://0.0.0.0:${PORT}"]
