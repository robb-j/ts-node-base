# [0] A common base for both stages
FROM node:10-alpine as base
WORKDIR /app
COPY ["package.json", "package-lock.json", "tsconfig.json", "/app/"]

# [1] A builder to install modules and run a build
# (installs production deps., clones them then installs dev)
FROM base as builder
RUN npm ci > /dev/null
COPY src /app/src
RUN npm run build -s

# [2] Run tests
FROM builder as tester
COPY spec /app/spec
RUN npm test -s > /dev/null

# [3] From the base, copy the dist/ and production node modules in and start
FROM builder as dist
RUN npm prune --production
ENTRYPOINT [ "npm" ]
CMD [ "start", "-s" ]
