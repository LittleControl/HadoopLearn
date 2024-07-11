#!/bin/bash

echo '======start hdfs ========='
ssh root@arch0 "/opt/hadoop-3.3.6/sbin/start-dfs.sh"
echo '======start yarn ========='
ssh root@arch1 "/opt/hadoop-3.3.6/sbin/start-yarn.sh"
echo '====start historyserver==='
ssh root@arch0 "/opt/hadoop-3.3.6/bin/mapred --daemon start historyserver"

exit 0
