#!/bin/sh -xe
export GS_HOME=$PWD
export GS_LOG=$PWD/log

# Install GridDB sever
wget https://github.com/griddb/griddb_nosql/releases/download/v4.3.0/griddb-nosql_4.3_amd64.deb
sudo dpkg -i griddb-nosql_4.3_amd64.deb

# Start server
su gsadm -l
gs_passwd admin
sed -i 's/"clusterName":""/"clusterName":"griddbcentos"/g' conf/gs_cluster.json
export no_proxy=127.0.0.1
gs_startnode -u admin/admin -w
gs_joincluster -c griddbcentos -u admin/admin

# run sample
cp client/c/sample/sample1.c .
gcc -I./client/c/include -L./bin sample1.c -lgridstore
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:./bin
./a.out 239.0.0.1 31999 griddbcentos admin admin

