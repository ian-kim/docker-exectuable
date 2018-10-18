#!/usr/bin/env bash

PWD=$(pwd)
echo $PWD

function start_mysql() {
  docker run --name=mysql1 --env-file .env -p 3306:3306 --volume=$PWD/backup:/var/lib/mysq --rm -d mysql/mysql-server
}

function stop_mysql() {
  docker stop mysql1
}

#stop_mysql

set -e
start_mysql


