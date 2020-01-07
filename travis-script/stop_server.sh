#!/bin/sh -xe

export GS_HOME=$PWD
export GS_LOG=$PWD/log

sudo su - gsadm -c "gs_stopcluster -u admin/admin"
sudo su - gsadm -c "gs_stopnode -u admin/admin"
