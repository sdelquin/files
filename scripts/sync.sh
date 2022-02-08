if [[ -f .env ]]; then
  export $(cat .env | xargs)
fi

rsync -avhz --exclude '_files.zip' contents/* $SSH_USER@$HOST:$CONTENTS_PATH --delete
ssh $SSH_USER@$HOST "find ${CONTENTS_PATH}* -type 'd' -exec chmod $CONTENTS_CHMOD {} \;"
