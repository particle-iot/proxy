#!/bin/bash

set -xe
rm -f redsmin-*.tgz
npm pack
docker build -t particle/redsmin-proxy .
docker push particle/redsmin-proxy .
