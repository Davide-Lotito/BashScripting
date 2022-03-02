# Easy script that brings together all the commands for extracting archives
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
fi