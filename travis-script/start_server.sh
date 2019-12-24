#!/bin/sh -xe
export GS_HOME=$PWD
export GS_LOG=$PWD/log

bin/gs_passwd admin -p admin
sed -i 's/"clusterName":""/"clusterName":"griddbcentos"/g' conf/gs_cluster.json
export no_proxy=127.0.0.1
bin/gs_startnode -u admin/admin -w
bin/gs_joincluster -c griddbcentos -u admin/admin


