# Typescript Node Sample Project

A project setup with [robb-j/ts-node-base](https://github.com/robb-j/ts-node-base/) template which creates a node app, with the common things already setup for Typescript.

## Features

- Multi-stage docker build to install, test and deploy
- Testing setup with `mocha`, `chai` & `nyc`
- Linting setup with `tslint`

## Dev Commands

```bash
# Watch code with nodemon (restarts on file changes)
npm run dev

# Lint the web & test directories
npm run lint

# Manually format code
# -> This repo runs prettier on git-stage, so code is always formatted
npm run prettier

# Run the unit tests
npm test

# Generate code coverage
npm run coverage
```
