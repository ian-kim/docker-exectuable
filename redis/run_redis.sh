#!/usr/bin/env bash

function start_redis(){
  docker run --name some-redis --rm -d -p 6379:6379  redis
}

set -e
start_redis


