#!/usr/bin/env bash

npm link ./shims/assert

npx esbuild \
  --platform=browser\
  --bundle main.js \
  --define:process.env.BABEL_TYPES_8_BREAKING=null \
  --format=esm > bundle.js
