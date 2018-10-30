# Typescript Node Sample Project

A project setup with [robb-j/ts-node-base](https://github.com/robb-j/ts-node-base/) template which creates a node app, with the common things already setup for Typescript.

## Features

- Multi-stage docker build to install, test and deploy
- Testing setup with `mocha`, `chai` & `nyc`
- Linting setup with `tslint`

## Dev Commands

```bash
# Lint the web & test directories
npm run lint

# Run the unit tests
npm test

# Generate coverage
npm run coverage          # outputs to coverage/
npm run coverage-summary  # outputs to terminal

# Watch code with nodemon (restarts on file changes)
npm run watch

# Update version (builds & pushes a new docker image)
npm version ... # --help
```
