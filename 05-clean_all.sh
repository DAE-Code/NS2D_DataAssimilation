#!/bin/sh
pwd=`pwd`
#
cd $pwd
rm -r figures
#
for list in `ls -d 4DV_*`
do
  cd $pwd/$list
  echo $list
  ./4_clean.sh
  cd $pwd
done
#
for list in `ls -d EnKF_*`
do
  cd $pwd/$list
  echo $list
  ./4_clean.sh
  cd $pwd
done
