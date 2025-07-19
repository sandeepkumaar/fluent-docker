FROM node:22-alpine3.22

WORKDIR /app

RUN apk add --no-cache git

# Add script
COPY now-sdk-cli.sh /usr/local/bin/now-sdk-cli
RUN chmod +x /usr/local/bin/now-sdk-cli

# Bake in default env vars
#ENV GIT_URL=https://github.com/sandeepkumaar/fluent-docker
#ENV GIT_USER=defaultuser
#ENV GIT_TOKEN=defaulttoken123
#ENV GIT_BRANCH=main

#ENV SN_SDK_INSTANCE_URL=""
#ENV SN_SDK_USER="" # servicenow user name
#ENV SN_SDK_USER_PWD="" # servicenow user password
#ENV SN_SDK_NODE_ENV="SN_SDK_CI_INSTALL" # needs to be set to enable the feature

ENTRYPOINT ["now-sdk-cli"]
