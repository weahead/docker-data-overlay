#!/bin/sh
set -e

TARGET_UID=$(stat -c "%u" ${DATA_DIR})
TARGET_GID=$(stat -c "%g" ${DATA_DIR})

echo "-- Setting ${TARGET_USER} user to use uid ${TARGET_UID}"
usermod -o -u ${TARGET_UID} ${TARGET_USER} || true

echo "-- Setting ${TARGET_USER} group to use gid ${TARGET_GID}"
groupmod -o -g ${TARGET_GID} ${TARGET_USER} || true

echo
echo "Running default entrypoint..."

if command -v su-exec >/dev/null 2>&1; then
  su-exec ${TARGET_USER} $@
else
  gosu ${TARGET_USER} $@
fi
