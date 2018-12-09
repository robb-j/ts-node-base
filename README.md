# A Typescript Node Project

This project was setup with [robb-j/ts-node-base](https://github.com/robb-j/ts-node-base/) which creates a node app, with the common things already setup for Typescript.

## Template Features

- Multi-stage docker build to install, test and deploy
- Testing & code coverage setup with `mocha`, `chai` & `nyc`
- Linting setup with `tsc`
- Code formatting with prettier on git file stage
- Semantically versioned docker images using `npm version`

## Dev Commands

```bash
# Start the app and reload on file changes
npm run watch

# Compile typescript
npm run build

# Update version (builds & pushes a new docker image)
# -> Uses the REGISTRY file & the npm version to tag image
npm version ... # --help

# Manually format code
# -> This repo runs prettier on git-stage, so code is always to standard
npm run prettier

# Run the unit tests
# -> Looks for .spec.ts files in the src directory
npm test

# Generate code coverage
npm run coverage
```
