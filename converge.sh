#!/bin/bash

set -e

pushd $(dirname $0)
[[ ! `which chef` ]] && ./getchef.sh
[[ ! `chef gem list --local | grep soloist` ]] && chef gem install soloist
chef exec soloist
