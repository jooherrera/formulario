#!/bin/sh

set -x

pid=0

sigterm_handler() {
  echo "sigterm handler called..."
    if [ $pid -ne 0 ]; then
      kill -TERM "$pid"
      echo "tail process terminated..."
      wait "$pid"
    fi
    # using the sigterm is a normal exit for us so exit with 0
    exit 0;
}

trap 'kill ${!}; sigterm_handler' TERM

#
# Do your initialization steps
#

# wait forever
while true
do
  tail -f /dev/null & wait ${!}
done

set +x