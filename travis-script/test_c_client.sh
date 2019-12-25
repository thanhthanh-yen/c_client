#!/bin/sh -xe

# Install GridDB sever
wget https://github.com/griddb/griddb_nosql/releases/download/v4.3.0/griddb-nosql_4.3_amd64.deb
sudo dpkg -i griddb-nosql_4.3_amd64.deb

export GS_HOME=/var/lib/gridstore
export GS_LOG=/var/lib/gridstore/log

# Start server
sudo -u gsadm bash -c "gs_passwd admin -p admin"
sudo -u gsadm bash -c "sed -i 's/"clusterName":""/"clusterName":"griddbcentos"/g' $GS_HOME/conf/gs_cluster.json"
export no_proxy=127.0.0.1
find . -type f -name "*.log"
sudo -H -u gsadm bash -c "gs_startnode -u admin/admin -w"
find . -type f -name "*.log"
sleep 10
sudo -H -u gsadm bash -c "gs_joincluster -c griddbcentos -u admin/admin"

# run sample
cp client/c/sample/sample1.c .
gcc -I./client/c/include -L./bin sample1.c -lgridstore
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:./bin
./a.out 239.0.0.1 31999 griddbcentos admin admin

