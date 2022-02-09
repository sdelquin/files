#!/bin/bash

if [[ -f .env ]]; then
  export $(cat .env | xargs)
fi

rsync -avhz --exclude '_files.zip' contents/* $SSH_USER@$HOST:$REMOTE_CONTENTS_PATH --delete
ssh $SSH_USER@$HOST "find ${REMOTE_CONTENTS_PATH}* -type 'd' -exec chmod $REMOTE_CONTENTS_CHMOD {} \;"
