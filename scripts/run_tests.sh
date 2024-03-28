#!/bin/bash

# Change directory to where your application is deployed
cd /var/www/myapp

# Specify the full path to npm
NPM_PATH=~/.nvm/versions/node/<version>/bin/npm

# Run linting tests
$NPM_PATH run lint

# Run unit tests
$NPM_PATH run test:unit

# Run integration tests
$NPM_PATH run test:integration

# Capture the exit codes of the tests
lint_exit=$?
unit_exit=$?
integration_exit=$?

# Exit with appropriate exit code based on test results
# For example, exit with code 1 if any of the tests fail, and 0 if all tests pass
if [ $lint_exit -ne 0 ] || [ $unit_exit -ne 0 ] || [ $integration_exit -ne 0 ]; then
  exit 1
fi

exit 0