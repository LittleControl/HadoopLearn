FROM ubuntu:latest

USER root
WORKDIR /root

# apt源替换为清华源
RUN mv /etc/apt/sources.list /etc/apt/sources.list_bak
COPY ./sources.list /etc/apt/

# 下载wget
RUN apt install wget -y

# 下载清华源的hadoop
RUN  wget -c https://mirrors.tuna.tsinghua.edu.cn/apache/hadoop/common/hadoop-3.3.6/hadoop-3.3.6-aarch64.tar.gz -O - | tar -xz

RUN  apt install openjdk-8-jdk -y
