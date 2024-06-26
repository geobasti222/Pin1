FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

COPY . /app
WORKDIR /app

CMD ["echo", "Hello, World!"]