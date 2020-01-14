#!/bin/sh
echo "Building Sass"
npx node-sass --recursive --output css --source-map true --source-map-contents scss
echo "Running eleventy"
eleventy $INPUT_ARGS
