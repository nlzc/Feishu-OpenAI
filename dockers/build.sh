#!/bin/sh
repo=08net
name=${1}
tag=$(date "+%Y%m%d%H%M")

if [ $# -lt 1 ]; then
  echo "Usage: ./build.sh name tag"
  exit 0
elif [ $# -eq 2 ]; then
  tag=$2
fi

echo "build >> ${name}:${tag}"
docker build -f "${name}".docker -t "${repo}"/"${name}":"${tag}" ..
#docker build --no-cache -f "${name}".docker -t "${repo}"/"${name}":"${tag}" ..
docker push "${repo}"/"${name}":"${tag}"

docker tag  "${repo}"/"${name}":"${tag}" "${repo}"/"${name}":latest
docker push "${repo}"/"${name}":latest
