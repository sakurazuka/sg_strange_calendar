#!/bin/bash
set -ux

# bundler
bundle install

# CMD
exec "$@"
