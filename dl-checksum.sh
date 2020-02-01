#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://www.apache.org/dist/flink

dl()
{
    local ver=$1
    local scala_ver=$2
    local url=$MIRROR//flink-${ver}/flink-${ver}-bin-scala_${scala_ver}.tgz.sha512
    printf "    # %s\n" $url
    printf "    '%s': sha512:%s\n" $scala_ver $(curl -SsL $url | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver 2.11
    dl $ver 2.12
}

dl_ver ${1:-1.9.2}
