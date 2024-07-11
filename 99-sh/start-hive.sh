#!/bin/bash

nohup hive --service metastore >/opt/log/hive.log 2>&1 &
nohup hiveserver2 >/opt/log/hiveserver2.log 2>&1 &

exit 0
