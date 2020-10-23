#!/bin/sh
pwd=`pwd`
#
cd $pwd
#
for list in `ls -d case_*`
do
  cd $pwd/$list
  echo $list
  time ../../../NS2D_4DVar/src/4dvar 
  cd $pwd
done

