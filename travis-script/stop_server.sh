#!/bin/sh -xe

export GS_HOME=$PWD
export GS_LOG=$PWD/log

bin/gs_stopcluster -u admin/admin
bin/gs_stopnode -u admin/admin
