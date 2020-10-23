#!/bin/sh
pwd=`pwd`
#
cd $pwd
#
for list in `ls -d case_*`
do
  cd $pwd/$list
  echo $list
#
  rm fort*
  rm probe*
  rm RMSE*
  rm -r output
#
  cd $pwd
done
#
rm -r data
rm -r graph
rm -r figs
