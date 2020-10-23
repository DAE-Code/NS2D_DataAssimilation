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
# cp $pwd/job.sh $pwd/$list
  echo $list
  name=`basename $list | sed -e "s/case_//"`
  cp RMSE.dat $name'_RMSE.txt'
  mv $name'_RMSE.txt' $pwd/data
  cp RMSE_all.dat $name'_RMSE_all.txt'
  mv $name'_RMSE_all.txt' $pwd/data
  cp probe_ens.dat $name'_probe_ens.txt'
  mv $name'_probe_ens.txt' $pwd/data
  cd $pwd
done
#
cd case_baseline
cp probe_mes.dat baseline_probe_mes.txt
cp baseline_probe_mes.txt $pwd/data
mv baseline_probe_mes.txt $pwd/graph
cp probe_ref.dat baseline_probe_ref.txt
cp baseline_probe_ref.txt $pwd/data
mv baseline_probe_ref.txt $pwd/graph
cp probe_ens.dat baseline_probe_ens.txt
cp baseline_probe_ens.txt $pwd/data
mv baseline_probe_ens.txt $pwd/graph
cd ..
#
cd $pwd/data
#
#
### Velocity at monitoring point 4 (Point D) ###
sed -n 3,2502p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
sed -n 3,2502p baseline_probe_ref.txt    | awk '{print $6}' > tmp2.txt
sed -n 3,2502p EnsSize20_probe_ens.txt   | awk '{print $9}' > tmp3.txt
sed -n 3,2502p baseline_probe_ens.txt    | awk '{print $9}' > tmp4.txt
sed -n 3,2502p EnsSize80_probe_ens.txt   | awk '{print $9}' > tmp5.txt
paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/EnsSize.txt
#
#sed -n 3,2502p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,2502p baseline_probe_ref.txt    | awk '{print $6}' > tmp2.txt
#sed -n 3,2502p IniCov1E-2_probe_ens.txt  | awk '{print $9}' > tmp3.txt
#sed -n 3,2502p baseline_probe_ens.txt    | awk '{print $9}' > tmp4.txt
#sed -n 3,2502p IniCov4E-1_probe_ens.txt  | awk '{print $9}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/IniCov.txt
#
#sed -n 3,2502p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,2502p baseline_probe_ref.txt    | awk '{print $6}' > tmp2.txt
#sed -n 3,2502p MesCov1E-3_probe_ens.txt  | awk '{print $9}' > tmp3.txt
#sed -n 3,2502p baseline_probe_ens.txt    | awk '{print $9}' > tmp4.txt
#sed -n 3,2502p MesCov1E-1_probe_ens.txt  | awk '{print $9}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/MesCov.txt
#
#sed -n 3,2502p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,2502p baseline_probe_ref.txt    | awk '{print $6}' > tmp2.txt
#sed -n 3,2502p MesEvery10_probe_ens.txt  | awk '{print $9}' > tmp3.txt
#sed -n 3,2502p baseline_probe_ens.txt    | awk '{print $9}' > tmp4.txt
#sed -n 3,2502p MesEvery70_probe_ens.txt  | awk '{print $9}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/MesEvery.txt
#
#sed -n 3,2502p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,2502p baseline_probe_ref.txt    | awk '{print $6}' > tmp2.txt
#sed -n 3,2502p MeshEvery02_probe_ens.txt | awk '{print $9}' > tmp3.txt
#sed -n 3,2502p baseline_probe_ens.txt    | awk '{print $9}' > tmp4.txt
#sed -n 3,2502p MeshEvery16_probe_ens.txt | awk '{print $9}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/MeshEvery.txt
#
#sed -n 3,2502p baseline_probe_ref.txt     | awk '{print $2}' > tmp1.txt
#sed -n 3,2502p baseline_probe_ref.txt     | awk '{print $6}' > tmp2.txt
#sed -n 3,2502p baseline_probe_ens.txt     | awk '{print $9}' > tmp3.txt
#sed -n 3,2502p TimeLagEns20_probe_ens.txt | awk '{print $9}' > tmp4.txt
#sed -n 3,2502p TimeLagEns50_probe_ens.txt | awk '{print $9}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/TimeLagEns.txt
#
#sed -n 3,2502p baseline_probe_ref.txt     | awk '{print $2}' > tmp1.txt
#sed -n 3,2502p baseline_probe_ref.txt     | awk '{print $6}' > tmp2.txt
#sed -n 3,2502p baseline_probe_ens.txt     | awk '{print $9}' > tmp3.txt
#sed -n 3,2502p PODEns20_probe_ens.txt     | awk '{print $9}' > tmp4.txt
#sed -n 3,2502p PODEns50_probe_ens.txt     | awk '{print $9}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/PODEns.txt
#
#sed -n 3,2502p baseline_probe_ref.txt     | awk '{print $2}' > tmp1.txt
#sed -n 3,2502p baseline_probe_ref.txt     | awk '{print $6}' > tmp2.txt
#sed -n 3,2502p baseline_probe_ens.txt     | awk '{print $9}' > tmp3.txt
#sed -n 3,2502p MesNoise1E-2_probe_ens.txt | awk '{print $9}' > tmp4.txt
#sed -n 3,2502p MesNoise1E-1_probe_ens.txt | awk '{print $9}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/MesNoise.txt
#
#
### RMSE in time ###
sed -n 2,2501p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
sed -n 2,2501p EnsSize20_RMSE.txt   | awk '{print $2}' > tmp2.txt
sed -n 2,2501p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
sed -n 2,2501p EnsSize80_RMSE.txt   | awk '{print $2}' > tmp4.txt
paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/EnsSize_RMSE.txt
#
#sed -n 2,2501p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,2501p IniCov1E-2_RMSE.txt  | awk '{print $2}' > tmp2.txt
#sed -n 2,2501p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,2501p IniCov4E-1_RMSE.txt  | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/IniCov_RMSE.txt
#
#sed -n 2,2501p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,2501p MesCov1E-3_RMSE.txt  | awk '{print $2}' > tmp2.txt
#sed -n 2,2501p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,2501p MesCov1E-1_RMSE.txt  | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/MesCov_RMSE.txt
#
#sed -n 2,2501p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,2501p MesEvery10_RMSE.txt  | awk '{print $2}' > tmp2.txt
#sed -n 2,2501p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,2501p MesEvery70_RMSE.txt  | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/MesEvery_RMSE.txt
#
#sed -n 2,2501p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,2501p MeshEvery02_RMSE.txt | awk '{print $2}' > tmp2.txt
#sed -n 2,2501p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,2501p MeshEvery16_RMSE.txt | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/MeshEvery_RMSE.txt
#
#sed -n 2,2501p baseline_RMSE.txt     | awk '{print $1}' > tmp1.txt
#sed -n 2,2501p baseline_RMSE.txt     | awk '{print $2}' > tmp2.txt
#sed -n 2,2501p TimeLagEns20_RMSE.txt | awk '{print $2}' > tmp3.txt
#sed -n 2,2501p TimeLagEns50_RMSE.txt | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/TimeLagEns_RMSE.txt
#
#sed -n 2,2501p baseline_RMSE.txt     | awk '{print $1}' > tmp1.txt
#sed -n 2,2501p baseline_RMSE.txt     | awk '{print $2}' > tmp2.txt
#sed -n 2,2501p PODEns20_RMSE.txt     | awk '{print $2}' > tmp3.txt
#sed -n 2,2501p PODEns50_RMSE.txt     | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/PODEns_RMSE.txt
#
#sed -n 2,2501p baseline_RMSE.txt     | awk '{print $1}' > tmp1.txt
#sed -n 2,2501p baseline_RMSE.txt     | awk '{print $2}' > tmp2.txt
#sed -n 2,2501p MesNoise1E-2_RMSE.txt | awk '{print $2}' > tmp3.txt
#sed -n 2,2501p MesNoise1E-1_RMSE.txt | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/MesNoise_RMSE.txt
#
#
rm tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt
