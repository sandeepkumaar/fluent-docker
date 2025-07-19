FROM node:22-alpine3.22

WORKDIR /app

RUN apk add --no-cache git

# Add script
COPY run-cli.sh /usr/local/bin/run-cli
RUN chmod +x /usr/local/bin/run-cli

# Bake in default env vars
ENV GIT_URL=https://github.com/org/repo.git
ENV GIT_USER=defaultuser
ENV GIT_TOKEN=defaulttoken123
ENV GIT_BRANCH=main

ENV DEPLOY_ENV=dev
ENV DEPLOY_TOKEN=default-deploy-token

ENTRYPOINT ["run-cli"]
