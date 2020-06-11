#!/bin/sh -ex

case "${1:-start}" in
  bin_cake)
    shift
    docker-compose exec phpfpm bin/cake "$@"
    ;;
  destroy)
    docker-compose down --volumes
    ;;
  setup)
    docker-compose run composer install --ignore-platform-reqs --no-interaction
    ;;
  start)
    docker-compose up
    ;;
  *)
    echo "Unexpected arguments."
    exit 1
    ;;
esac
