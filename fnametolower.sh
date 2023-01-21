#!/bin/bash

#renames entire directory tree to lowercase 

dfs()
{
  for file in `ls $1 | grep [A-Z]`
  do
    lower_name=`echo $file | tr A-Z a-z`
    mv $1/$file $1/$lower_name

    if [ -d $1/$lower_name ]; then 
      dfs $1/$lower_name
    fi
  done
}

# usage: ./fnametolower.sh $dirname
dfs $1



