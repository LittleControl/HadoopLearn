#!/bin/bash

echo '====stop historyserver==='
ssh root@arch0 "/opt/hadoop-3.3.6/bin/mapred --daemon stop historyserver"
echo '======stop yarn ========='
ssh root@arch1 "/opt/hadoop-3.3.6/sbin/stop-yarn.sh"
echo '======stop hdfs ========='
ssh root@arch0 "/opt/hadoop-3.3.6/sbin/stop-dfs.sh"

echo '======stop finished======'

exit 0
