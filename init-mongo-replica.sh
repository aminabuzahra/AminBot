#!/bin/bash

sleep 7

docker exec -it mongo1 mongosh --eval "rs.initiate({
 _id: \"myReplicaSet\",
 members: [
   {_id: 0, host: \"mongo1\"},
   {_id: 1, host: \"mongo2\"},
   {_id: 2, host: \"mongo3\"}
 ]
})"

if [ $? -ne 0 ]; then
    echo "Failed to initialize replica set."
    exit 1
fi

echo "Replica set initialized successfully."
exit 0
