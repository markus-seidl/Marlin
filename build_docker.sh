#!/bin/bash -xe

DOCKER=docker

cd docker
${DOCKER} build . -t platformio

cd ..
${DOCKER} run --rm -ti -v `pwd`:/opt/workspace platformio
