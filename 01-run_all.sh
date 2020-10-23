#!/bin/sh
pwd=`pwd`
#
cd $pwd
#
for list in `ls -d 4DV_*`
do
  cd $pwd/$list
  echo $list
  ./1_submit.sh
  cd $pwd
done
#
for list in `ls -d EnKF_*`
do
  cd $pwd/$list
  echo $list
  ./1_submit.sh
  cd $pwd
done
