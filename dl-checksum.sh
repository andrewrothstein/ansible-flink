#!/usr/bin/env sh
VER='1.7.2'
DIR=~/Downloads
MIRROR=https://www.apache.org/dist/flink/flink-${VER}

dl()
{
    HADOOP_VER=$1
    SCALA_VER=$2
    URL=$MIRROR/flink-${VER}-bin-${HADOOP_VER}-scala_${SCALA_VER}.tgz.sha512
    printf "${HADOOP_VER}:\n"
    printf "# $URL\n"
    printf "$SCALA_VER: sha512:"
    curl -SsL $URL | awk '{print $1;}'
}

dl hadoop28 2.11
dl hadoop27 2.11
dl hadoop26 2.11
dl hadoop24 2.11
