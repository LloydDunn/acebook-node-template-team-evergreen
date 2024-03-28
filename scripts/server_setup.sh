#!/bin/bash

# Source nvm environment script
source "$HOME/.nvm/nvm.sh"

# Change directory to where your application is deployed
cd /var/www/myapp

# Install Node.js version 16
nvm install 16

# Use Node.js version 16
nvm use 16

# Install npm packages
npm install -g

# Install PM2 globally
npm install pm2 -g