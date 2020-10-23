#!/bin/sh
pwd=`pwd`
#
cd $pwd
mkdir data
mkdir graph 
#
for list in `ls -d case_*`
do
  cd $pwd/$list
  echo $list
  name=`basename $list | sed -e "s/case_//"`
  cp RMSE.dat $name'_RMSE.txt'
  mv $name'_RMSE.txt' $pwd/data
  cp RMSE_all.dat $name'_RMSE_all.txt'
  mv $name'_RMSE_all.txt' $pwd/data
  cp probe_bst.dat $name'_probe_bst.txt'
  mv $name'_probe_bst.txt' $pwd/data
  cd $pwd
done
#
cd case_baseline
cp probe_mes.dat baseline_probe_mes.txt
cp baseline_probe_mes.txt $pwd/graph
mv baseline_probe_mes.txt $pwd/data
#
cp probe_ref.dat baseline_probe_ref.txt
cp baseline_probe_ref.txt $pwd/graph
mv baseline_probe_ref.txt $pwd/data
#
cp probe_est.dat baseline_probe_est.txt
mv baseline_probe_est.txt $pwd/graph
#
cp probe_bst.dat baseline_probe_bst.txt
mv baseline_probe_bst.txt $pwd/graph
#
cp fort.300 baseline_fort.300.txt
mv baseline_fort.300.txt $pwd/graph
cd ..
#
cd $pwd/data
#
#
### Velocity at monitoring point 4 (Point D) ###
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
#sed -n 3,402p 4dvIter30_probe_bst.txt   | awk '{print $3}' > tmp3.txt
#sed -n 3,402p baseline_probe_bst.txt    | awk '{print $3}' > tmp4.txt
#sed -n 3,402p 4dvIter70_probe_bst.txt   | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/4dvIteration.txt
#
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
#sed -n 3,402p MeshEvery01_probe_bst.txt | awk '{print $3}' > tmp3.txt
#sed -n 3,402p baseline_probe_bst.txt    | awk '{print $3}' > tmp4.txt
#sed -n 3,402p MeshEvery04_probe_bst.txt | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/4dvMeshEvery.txt
#
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
#sed -n 3,402p MesEvery08_probe_bst.txt  | awk '{print $3}' > tmp3.txt
#sed -n 3,402p baseline_probe_bst.txt    | awk '{print $3}' > tmp4.txt
#sed -n 3,402p MesEvery32_probe_bst.txt  | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/4dvMesEvery.txt
#
sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
sed -n 3,402p WindowT1.0_probe_bst.txt  | awk '{print $3}' > tmp3.txt
sed -n 3,402p baseline_probe_bst.txt    | awk '{print $3}' > tmp4.txt
sed -n 3,402p WindowT5.0_probe_bst.txt  | awk '{print $3}' > tmp5.txt
paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/4dvWindow.txt
#
#sed -n 3,402p baseline_probe_ref.txt            | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt            | awk '{print $3}' > tmp2.txt
#sed -n 3,402p 4dvCycle_probe_bst.txt            | awk '{print $3}' > tmp3.txt
#sed -n 3,402p baseline_probe_bst.txt            | awk '{print $3}' > tmp4.txt
#sed -n 3,402p 4dvCycle_MeshEvery4_probe_bst.txt | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/4dvCycle.txt
#
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
#sed -n 3,402p baseline_probe_bst.txt    | awk '{print $3}' > tmp3.txt
#sed -n 3,402p MesNoise1E-2_probe_bst.txt    | awk '{print $3}' > tmp4.txt
#sed -n 3,402p MesNoise1E-1_probe_bst.txt    | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/4dvMesNoise.txt
#
#
### RMSE in time ###
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,401p 4dvIter30_RMSE.txt   | awk '{print $2}' > tmp2.txt
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,401p 4dvIter70_RMSE.txt   | awk '{print $2}' > tmp4.txt
paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/4dvIteration_RMSE.txt
#
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,401p MeshEvery01_RMSE.txt | awk '{print $2}' > tmp2.txt
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,401p MeshEvery04_RMSE.txt | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/4dvMeshEvery_RMSE.txt
#
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,401p MesEvery08_RMSE.txt  | awk '{print $2}' > tmp2.txt
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,401p MesEvery32_RMSE.txt  | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/4dvMesEvery_RMSE.txt
#
sed -n 2,401p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
sed -n 2,401p WindowT1.0_RMSE.txt  | awk '{print $2}' > tmp2.txt
sed -n 2,401p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
sed -n 2,401p WindowT5.0_RMSE.txt  | awk '{print $2}' > tmp4.txt
paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/4dvWindow_RMSE.txt
#
#sed -n 2,401p baseline_RMSE.txt            | awk '{print $1}' > tmp1.txt
#sed -n 2,401p 4dvCycle_RMSE.txt            | awk '{print $2}' > tmp2.txt
#sed -n 2,401p baseline_RMSE.txt            | awk '{print $2}' > tmp3.txt
#sed -n 2,401p 4dvCycle_MeshEvery4_RMSE.txt | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/4dvCycle_RMSE.txt
#
#sed -n 2,401p baseline_RMSE.txt   | awk '{print $1}' > tmp1.txt
#sed -n 2,401p baseline_RMSE.txt   | awk '{print $2}' > tmp2.txt
#sed -n 2,401p MesNoise1E-2_RMSE.txt   | awk '{print $2}' > tmp3.txt
#sed -n 2,401p MesNoise1E-1_RMSE.txt   | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/4dvMesNoise_RMSE.txt
#
#
rm tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt
