FROM node:18

WORKDIR /app
USER root

RUN apt-get update
RUN apt-get install -y git
RUN npm install -g pnpm@9.11.0 nuxt

COPY package.json ./

RUN pnpm i

COPY . .

COPY ./.devcontainer/startup.sh /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup.sh

EXPOSE 3000