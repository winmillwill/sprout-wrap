#!/bin/bash

set -e

pushd $(dirname $0)
[[ ! `which chef` ]] && ./getchef.sh
chef exec soloist
