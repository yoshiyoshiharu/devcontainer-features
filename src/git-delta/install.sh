#!/bin/sh
set -e

LATEST_GIT_DELTA_VERSION=$(curl -s https://api.github.com/repos/dandavison/delta/releases/latest | jq '.name')

wget "https://github.com/dandavison/delta/releases/download/${LATEST_GIT_DELTA_VERSION}/git-delta-musl_${LATEST_GIT_DELTA_VERSION}_amd64.deb"
apt-get install ./git-delta-musl_${LATEST_GIT_DELTA_VERSION}_amd64.deb
