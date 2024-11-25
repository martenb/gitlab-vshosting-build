#!/bin/bash
php_versions=("5.6" "7.4" "8.0" "8.1" "8.2" "8.3" "8.4")

for php_version in ${php_versions[@]}; do
  image_tag=martenb/gitlab-vshosting-ci:$php_version

  if [ $php_version = "5.6" ]
  then
    docker build --build-arg PHP_VERSION=$php_version -t $image_tag ./deprecated
  else
    docker build --build-arg PHP_VERSION=$php_version -t $image_tag .
  fi

  docker push martenb/gitlab-vshosting-ci:$php_version
done
