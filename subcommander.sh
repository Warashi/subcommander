#!/bin/sh
CMD=$(basename ${0})-${1}
shift

if ! type ${CMD} > /dev/null 2>&1 ; then
  echo "${CMD} not found" >&2
  exit 1
fi
exec ${CMD} "${@}"
