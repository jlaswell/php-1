#!/usr/bin/env bash

repository="realpage/php"
cli=( "7.0.4-cli" "7.0-cli" "7-cli" "cli" "7.0.4" "7.0" "7" "latest" )
tagscli=""
fpm=( "7.0.4-fpm" "7.0-fpm" "7-fpm" "fpm" )
tagsfpm=""

echo "Building tags for cli images"
for version in "${cli[@]}"; do
	tagscli="${tagscli} -t ${repository}:${version}"
done

echo "Building base cli images"
docker build ${tagscli} -f 7.0/Dockerfile .

echo "Building tags for fpm images"
for version in "${fpm[@]}"; do
	tagsfpm="${tagsfpm} -t ${repository}:${version}"
done

echo "Building base cli images"
docker build ${tagsfpm} -f 7.0/fpm/Dockerfile .

echo "Pushing builds"
for version in "${cli[@]}"; do
	docker push ${repository}:${version}
done

for version in "${fpm[@]}"; do
	docker push ${repository}:${version}
done