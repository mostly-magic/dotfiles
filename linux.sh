#!/usr/bin/env bash

apt-get update

apt-get install -y \
    libsecret-1-0 libsecret-1-dev

cd /usr/share/doc/git/contrib/credential/libsecret
make

git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret
