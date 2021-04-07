#!/bin/sh

rm -r /app/tmp/pids/server.pid

bundle install -j "$(getconf _NPROCESSORS_ONLN)"


rails s -p 3001 -b '0.0.0.0'
