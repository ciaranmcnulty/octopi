#!/bin/bash

URL="http://$POWER_HOST:$POWER_PORT/plugs/$POWER_DEVICEID"

case "$1" in
"on")
    wget -qO - "$URL/on" > /dev/null
    ;;
"off")
    wget -qO - "$URL/off" > /dev/null
    ;;
*)
    wget -qO - "$URL" | grep '"relay_state":1' > /dev/null
    exit $?
    ;;
esac

