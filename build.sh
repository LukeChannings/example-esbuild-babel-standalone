#!/usr/bin/env bash

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
