#!/bin/bash
cd $PWD
version=$1
if [[ $version ]];
then
    name="umlatt/ubuntu-novnc:$version"
    docker build -t $name .
    read -p " Start container? y/[n] " -t 5 choice
    if  [[ "${choice,,}" == "y" ]]; then
        docker run -it $name /bin/bash
    fi
else
    printf "Version number required.\ne.g.\t$0 1.0.2\n"
fi
