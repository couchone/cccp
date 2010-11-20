#!/bin/sh -ex
if [ -z "$COUCH" ]; then 
  COUCH="http://127.0.0.1:5984"
fi

DB="cccp"
DB2="${DB}2"

curl -sX PUT $COUCH/$DB
curl -sX DELETE $COUCH/$DB2
curl -sX PUT $COUCH/$DB2

curl -s $COUCH/$DB/_design/cccp/_list/bulk_docs/all | \
curl -s $COUCH/$DB2/_bulk_docs -H "Content-Type: application/json" -d @-
