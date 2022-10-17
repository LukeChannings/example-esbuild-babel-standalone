#!/usr/bin/env bash

# Some babel plugins depend on Node's assert module, which is not available.
# This will shim it with a noop.
npm link ./shims/assert

# Build for the web (index.html)
npx esbuild \
  --platform=browser\
  --bundle main.js \
  --define:process.env.BABEL_TYPES_8_BREAKING=null \
  --format=esm \
  --legal-comments=none \
  --minify \
  --outfile=babel.esm.js

# Build for JSC
npx esbuild \
  --platform=browser\
  --bundle main.js \
  --define:process.env.BABEL_TYPES_8_BREAKING=null \
  --format=iife \
  --global-name=babel \
  --legal-comments=none \
  --minify \
  --outfile=JSC.playground/Resources/babel.bundle.js
