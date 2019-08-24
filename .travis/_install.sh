#!/bin/sh

set -e

[ -z "${GITHUB_PAT}" ] && exit 0
[ "${TRAVIS_BRANCH}" != "setup" ] && exit 0

pipenv install --pypi-mirror https://pypi.python.org/simple

# install hexo commands
npm install -g hexo-cli
npm install

