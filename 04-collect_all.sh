#!/bin/sh
pwd=`pwd`
#
cd $pwd
mkdir figures
#
for list in `ls -d 4DV_*`
do
  cd $pwd/$list
  echo $list
  cd figs
  cp *.png  ../../figures
  cd $pwd/$list
  cd graph  
  cp *.png  ../../figures
  cd $pwd
done
#
for list in `ls -d EnKF_*`
do
  cd $pwd/$list
  echo $list
  cd figs
  cp *.png  ../../figures
  cd $pwd/$list
  cd graph
  cp *.png  ../../figures
  cd $pwd
done
