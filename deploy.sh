#!/bin/bash

# 🚀 Deployment Script for Unix/macOS/Git Bash
# Use this to build and deploy your portfolio manually to GitHub Pages.

echo "Starting deployment to GitHub Pages..."

# Check if node_modules exists, install if missing
if [ ! -d "node_modules" ]; then
    echo "Installing dependencies..."
    npm install
fi

# Run the deploy command from package.json
echo "Building and deploying..."
npm run deploy

if [ $? -eq 0 ]; then
    echo "✅ Successfully deployed to GitHub Pages!"
else
    echo "❌ Deployment failed. Please check the logs above."
fi
