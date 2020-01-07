#!/bin/sh -xe

export GS_HOME=$PWD
export GS_LOG=$PWD/log

sudo su -gsadm -c "bin/gs_stopcluster -u admin/admin"
sudo su -gsadm -c "bin/gs_stopnode -u admin/admin"
