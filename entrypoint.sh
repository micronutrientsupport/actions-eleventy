#!/bin/sh
echo "Building Sass"
npm install
/node_modules/.bin/node-sass --recursive --output css --source-map true --source-map-contents scss
echo "Running eleventy"
eleventy $INPUT_ARGS
