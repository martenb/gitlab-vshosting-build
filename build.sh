#!/bin/bash
php_versions=("7.4" "8.0" "8.1" "8.2")

for php_version in ${php_versions[@]}; do
  image_tag=martenb/gitlab-vshosting-ci:$php_version
  docker build --build-arg PHP_VERSION=$php_version -t $image_tag .
  docker push martenb/gitlab-vshosting-ci:$php_version
done
