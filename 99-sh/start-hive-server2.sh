#!/bin/bash

export HIVE_HOME="/opt/apache-hive-3.1.3-bin"
export HADOOP_HOME="/opt/hadoop-3.3.6"
export JAVA_HOME="/usr/lib/jvm/default-runtime"

$HIVE_HOME/bin/hiveserver2 >/opt/log/hiveserver2.log
