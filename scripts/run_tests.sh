#!/bin/bash
source ~/.bash_profile
# Change directory to where your application is deployed
cd /var/www/myapp

# Start your application with PM2
pm2 start app.js --name myapp

# Wait for application to start (adjust sleep time as needed)
sleep 10

# Run linting tests
npm run lint

# Run unit tests
npm run test:unit

# Run integration tests
npm run test:integration

# Capture the exit codes of the tests
lint_exit=$?
unit_exit=$?
integration_exit=$?

# Stop your application managed by PM2
pm2 stop myapp

# Exit with appropriate exit code based on test results
# For example, exit with code 1 if any of the tests fail, and 0 if all tests pass
if [ $lint_exit -ne 0 ] || [ $unit_exit -ne 0 ] || [ $integration_exit -ne 0 ]; then
  exit 1
fi

exit 0