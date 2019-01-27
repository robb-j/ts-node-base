# [0] A common base for both stages
FROM node:10-alpine as base
WORKDIR /app
COPY ["package.json", "package-lock.json", "tsconfig.json", "/app/"]

# [1] A builder to install all dependancies and run a build
FROM base as builder
ENV NODE_ENV development
RUN npm ci > /dev/null 2>&1
COPY src /app/src
RUN npm run build -s

# [2] Run tests
FROM builder as tester
ENV NODE_ENV test
RUN npm test -s

# [3] From the base, copy the dist/ and production node modules in and start
FROM builder as dist
ENV NODE_ENV production
EXPOSE 3000
RUN npm prune
CMD [ "npm", "start", "-s" ]
