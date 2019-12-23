#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa \
    target/printramir-1.0-SNAPSHOT.jar \
    root@138.197.239.77:/root/


echo 'Restart server..'

ssh -i ~/.ssh/id_rsa root@138.197.239.77 << EOF

pgrep java | xargs kill -9
nohup java -jar printramir-1.0-SNAPSHOT.jar  > log.txt &

EOF

echo 'Bye'



