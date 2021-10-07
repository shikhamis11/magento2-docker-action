#!/bin/sh -l

echo "Error Severity $1"
echo "Warning Severity $2"
cd $GITHUB_WORKSPACE
sh -c "/root/.composer/vendor/bin/phpcs --standard=Magento2 --error-severity=$1 --warning-severity=$2 $GITHUB_WORKSPACE -s ./"
sh -c "/root/.composer/vendor/bin/phpcs --report=checkstyle --standard=Magento2 $GITHUB_WORKSPACE -s $*"

