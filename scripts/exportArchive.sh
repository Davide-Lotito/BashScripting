## Easy script that brings together all the commands for extracting archives
# !/bin/bash

#$1 it's the first parameter, it contains the type of archive (zip/tar)
#$2 it's the second parameter, it contains the file/path to extract

#list of the supported archive:
    #zip
    #tar
    #tar.gz
    #tar.bz2
    #7z
    #gz

if [ "$1" == "-help" ] || [ "$1" == "--help" ]; then
    echo "This script script that brings together all the commands for extracting archives"
    echo "Uses two parameters, the type of archive (zip/tar/..) and the file/path to extract"
    echo "Supported archives are: zip, tar, tar.gz, tar.bz2, 7z, gz"
    echo "It's created by Davide"
    exit 0;
fi

if [ "$#" != 2 ]; then
    echo "You have to provide two parameters, the type and path to the file"
    exit 1;
fi

if [ $1 == "zip" ] ; then
    echo "extract a zip file"
    unzip $2
elif [ $1 == "tar"  ] ; then
    tar xf $2
elif [ $1 == "tar.gz"  ] ; then
    tar xzf $2
elif [ $1 == "tar.bz2"  ] ; then
    tar xjf $2
elif [ $1 == "7z"  ] ; then
    p7zip -d $2
elif [ $1 == "gz"  ] ; then
    gzip -d $2
else
    echo "archive not supported"
    exit 1;
fi