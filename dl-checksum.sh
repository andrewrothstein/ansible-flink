#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://www.apache.org/dist/flink

dl()
{
    local ver=$1
    local scala_ver=$2
    # https://downloads.apache.org/flink/flink-1.16.1/flink-1.16.1-bin-scala_2.12.tgz.sha512
    local url=$MIRROR//flink-${ver}/flink-${ver}-bin-scala_${scala_ver}.tgz.sha512
    printf "    # %s\n" $url
    printf "    '%s': sha512:%s\n" $scala_ver $(curl -SsL $url | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    local scala_ver=$2
    printf "  '%s':\n" $ver
    dl $ver $scala_ver
}

scala_ver=2.12
dl_ver ${1:-1.19.0} $scala_ver
