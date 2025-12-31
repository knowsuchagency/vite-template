FROM oven/bun:1

WORKDIR /app

COPY package.json bun.lock ./
RUN bun install --frozen-lockfile

COPY . .

ENV PORT=3000
EXPOSE $PORT

CMD sh -c "bun run dev --host 0.0.0.0 --port $PORT"
