#!/usr/bin/env sh
VER='1.8.1'
DIR=~/Downloads
MIRROR=https://www.apache.org/dist/flink/flink-${VER}

dl()
{
    SCALA_VER=$1
    URL=$MIRROR/flink-${VER}-bin-scala_${SCALA_VER}.tgz.sha512
    printf "    # $URL\n"
    printf "    '%s': sha512:%s\n" $SCALA_VER `curl -SsL $URL | awk '{print $1}'`
}

printf "  '%s':\n" $VER
dl 2.11
dl 2.12
