#!/bin/bash

DIR=/opt/asf

sed -i 's/DefaultUsername/'"$USERNAME"'/' "$DIR"/config/default.json
sed -i 's/DefaultPassword/'"$PASSWORD"'/' "$DIR"/config/default.json

exec "$@"
