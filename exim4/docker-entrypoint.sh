#!/bin/bash
set -e

update-exim4.conf -v

exec "$@"

