#!/bin/bash
function getdir(){
    for element in `ls $1`
    do  
        dir_or_file=$1"/"$element
        if [ -d $dir_or_file ]
        then 
            getdir $dir_or_file
        else
            echo $dir_or_file
        fi  
    done
}
root_dir=$(cd `dirname $0`; pwd)
getdir $root_dir>list.txt
echo 'END!'
echo '请查看当前目录下 list.txt 文件'

