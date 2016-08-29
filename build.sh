#!/usr/bin/env bash

repository="realpage/php"
cli=( "7.0.10-cli" "7.0-cli" "7-cli" "cli" )
tagscli=""
fpm=( "7.0.10-fpm" "7.0-fpm" "7-fpm" "fpm" )
tagsfpm=""
alpine=( "7.0.10-alpine" "7.0-alpine" "7-alpine" "alpine" )
tagsapline=""
fpmalpine=( "7.0.10-fpm-alpine" "7.0-fpm-alpine" "7-fpm-alpine" "fpm-alpine" )
tagsfpmapline=""

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

echo "Building tags for alpine images"
for version in "${alpine[@]}"; do
  tagsalpine="${tagsalpine} -t ${repository}:${version}"
done

echo "Building base alpine images: ${tagsalpine}"
docker build ${tagsalpine} -f 7.0/alpine/Dockerfile .
docker images

echo "Building tags for fpm-alpine images"
for version in "${fpmalpine[@]}"; do
  tagsfpmalpine="${tagsfpmalpine} -t ${repository}:${version}"
done

echo "Building base fpm-alpine images: ${tagsfpmalpine}"
docker build ${tagsfpmalpine} -f 7.0/fpm/alpine/Dockerfile .
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

for version in "${alpine[@]}"; do
  echo "Pushing ${repository}:${version}...";
  docker push ${repository}:${version}
done

for version in "${fpmalpine[@]}"; do
  echo "Pushing ${repository}:${version}...";
  docker push ${repository}:${version}
done
