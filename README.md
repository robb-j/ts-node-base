# A Typescript Node Project

This project was setup with [robb-j/ts-node-base](https://github.com/robb-j/ts-node-base/) which creates a node app, with the common things already setup for Typescript.

> **Deprecated:** I now use [puggle](https://github.com/robb-j/puggle/)
> and [puggle-presets](https://github.com/robb-j/puggle-presets/)
> to bootstrap my projects

## Template Features

- Multi-stage docker build to install, test and deploy
- Testing setup with `jest`, `ts-jest`
- Linting setup with `tsc`
- Auto load `.env` files with `dotenv`

## Dev Commands

```bash
# Run in dev mode and restart on file changes
npm run dev

# Lint the source code
npm run lint

# Manually format code
# -> This repo runs prettier on git-stage, so committed code is always formatted
npm run prettier

# Run the unit tests
# -> Looks for .spec.ts files in the src directory
npm test

# Generate code coverage in coverage/
npm run coverage
```
