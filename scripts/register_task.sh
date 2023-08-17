#!/bin/sh

DIR=$(pwd)

echo Task Path: $DIR/task-def.json
# echo Task Definition: $(cat $DIR/task-def.json | jq)

aws ecs register-task-definition \
--region us-east-1 \
--cli-input-json file://$DIR/task-def.json