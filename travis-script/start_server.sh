#!/bin/sh -x
# Install GridDB sever
wget https://github.com/griddb/griddb_nosql/releases/download/v4.3.0/griddb-nosql_4.3_amd64.deb
sudo dpkg -i griddb-nosql_4.3_amd64.deb

# Start server
sudo su - gsadm -c "gs_passwd admin -p admin"
sudo su - gsadm -c "sed -i 's/\"clusterName\":\"\"/\"clusterName\":\"myCluster\"/g' conf/gs_cluster.json"
sudo su - gsadm -c "export no_proxy=127.0.0.1"
sudo su - gsadm -c "gs_startnode -u admin/admin -w"
sudo su - gsadm -c "gs_joincluster -c myCluster -u admin/admin"


