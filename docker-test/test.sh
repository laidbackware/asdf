#!/bin/bash

set -ex

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git clone --depth 1 --branch v1.2.1 https://github.com/bats-core/bats-core.git $HOME/bats-core

ls -l $HOME/bats-core/bin

export PATH="$PATH:$HOME/bats-core/bin"

cd $script_dir/..

bats test
