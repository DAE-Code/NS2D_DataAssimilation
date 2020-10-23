#!/bin/sh
pwd=`pwd`
#
cd $pwd
#
for list in `ls -d case_*`
do
  cd $pwd/$list
  echo $list
  time ../../../NS2D_EnKF/src/enkf 
  cd $pwd
done

