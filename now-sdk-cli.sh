#!/bin/sh
set -e

echo "Authenticating and cloning $GIT_URL..."
#AUTH_URL=$(echo "$GIT_URL" | sed "s#https://#https://$GIT_USER:$GIT_TOKEN@#")
#git clone --branch "$GIT_BRANCH" "$AUTH_URL" /app/src
git clone "$GIT_URL" /app

cd /app

echo "Installing dependencies..."
npm install

echo "Building..."
npm run build

echo "Deploying to $SN_SDK_INSTANCE_URL"
echo "Deploying to $SN_SDK_USER"
echo "Deploying to $SN_SDK_USER_PWD"
npm run deploy
