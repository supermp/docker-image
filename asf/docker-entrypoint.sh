#!/bin/bash

DIR=/opt/asf

while getopts 'u:p:' OPT; do
    case $OPT in
        u)
            USERNAME=$OPTARG;;
        p)
            PASSWORD=$OPTARG;;
    esac
done

sed -i 's/DefaultUsername/'"$USERNAME"'/' "$DIR"/config/default.json
sed -i 's/DefaultPassword/'"$PASSWORD"'/' "$DIR"/config/default.json

exec "$@"
