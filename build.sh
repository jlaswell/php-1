#!/usr/bin/env bash

repository="realpage/php"
cli=( "7.0.5-cli" "7.0-cli" "7-cli" "cli" )
tagscli=""
fpm=( "7.0.5-fpm" "7.0-fpm" "7-fpm" "fpm" )
tagsfpm=""

echo "Building tags for cli images"
for version in "${cli[@]}"; do
  tagscli="${tagscli} -t ${repository}:${version}"
done

echo "Building base cli images: ${tagscli}"
docker build ${tagscli} -f 7.0/Dockerfile .
docker images

echo "Building tags for fpm images"
for version in "${fpm[@]}"; do
  tagsfpm="${tagsfpm} -t ${repository}:${version}"
done

echo "Building base fpm images: ${tagsfpm}"
docker build ${tagsfpm} -f 7.0/fpm/Dockerfile .
docker images

echo "Pushing builds"
for version in "${cli[@]}"; do
  echo "Pushing ${repository}:${version}...";
  docker push ${repository}:${version}
done

for version in "${fpm[@]}"; do
  echo "Pushing ${repository}:${version}...";
  docker push ${repository}:${version}
done