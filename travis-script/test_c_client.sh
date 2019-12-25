#!/bin/sh -xe

# Install GridDB sever
wget https://github.com/griddb/griddb_nosql/releases/download/v4.3.0/griddb-nosql_4.3_amd64.deb
sudo dpkg -i griddb-nosql_4.3_amd64.deb

# Start server
sudo -l -u gsadm bash -c "gs_passwd admin -p admin"
sudo -l -u gsadm bash -c "sed -i 's/"clusterName":""/"clusterName":"griddbcentos"/g' conf/gs_cluster.json"
export no_proxy=127.0.0.1
sudo -l -u gsadm bash -c "gs_startnode -u admin/admin -w"
sleep 10
sudo -l -u gsadm bash -c "gs_joincluster -c griddbcentos -u admin/admin"
sleep 10

# run sample
cp client/c/sample/sample1.c .
gcc --version
gcc-4.8 -I./client/c/include -L./bin sample1.c -lgridstore
ls
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:./bin
./a.out 239.0.0.1 31999 griddbcentos admin admin
echo "here"
