#!/usr/bin/env bash
DIR=`dirname $0`
source $DIR/../../travis/travis-helper.sh

if ! [[ -z "$TRAVIS_BUILD_ID" ]]; then
  source ~/.nvm/nvm.sh
  nvm install 14 && nvm alias default 14 && nvm use default
  node --version
fi

npm config set loglevel error

cd ../../..
travis_retry npm install .
