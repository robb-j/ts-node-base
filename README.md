# Typescript Node Project

A project setup with [robb-j/ts-node-base](https://github.com/robb-j/ts-node-base/) template which creates a node app, with the common things already setup for Typescript.

## Features

- Multi-stage docker build to install, test and deploy
- Testing setup with `jest`, `ts-jest`
- Linting setup with `tsc`
- Auto load `.env` files with `dotenv`

## Dev Commands

```bash
# Run the app in dev mode
npm run dev:once

# Run in dev mode and restart on file changes
npm run dev:watch

# Lint the source code
npm run lint

# Manually format code
# -> This repo runs prettier on git-stage, so committed code is always formatted
npm run prettier

# Run the unit tests
npm test

# Generate code coverage in coverage/
npm run coverage
```
