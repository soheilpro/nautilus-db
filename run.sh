#!/usr/bin/env sh

COMMAND=$1

case "$COMMAND" in
  config)
    "${EDITOR:-vi}" ${NAUTILUS_DB_CONFIG:-./config/mongodb.sh}
    ;;

  start)
    ./mongodb.sh mongod
    ;;

  init)
    ./mongodb.sh mongo ./src/init.js
    ;;

  update)
    ./mongodb.sh mongo ./src/update.js
    ;;

  mongo)
    ./mongodb.sh mongo
    ;;

  backup)
    ./mongodb.sh mongodump --archive --gzip
    ;;

  restore)
    ./mongodb.sh mongo --eval 'db.dropDatabase()'
    ./mongodb.sh mongorestore --archive --gzip
    ;;

  *)
    echo "Usage:"
    echo "  $(basename "$0") config"
    echo "  $(basename "$0") start"
    echo "  $(basename "$0") init"
    echo "  $(basename "$0") update"
    echo "  $(basename "$0") mongo"
    echo "  $(basename "$0") backup"
    echo "  $(basename "$0") restore"
    exit 1
esac
