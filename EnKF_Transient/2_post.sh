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
#
cd $pwd/data
#
#
### Velocity at monitoring point D ###
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
#sed -n 3,402p EnsSize20_probe_ens.txt   | awk '{print $3}' > tmp3.txt
#sed -n 3,402p baseline_probe_ens.txt    | awk '{print $3}' > tmp4.txt
#sed -n 3,402p EnsSize80_probe_ens.txt   | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/EnsSize.txt
#
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
#sed -n 3,402p IniCov1E-2_probe_ens.txt  | awk '{print $3}' > tmp3.txt
#sed -n 3,402p baseline_probe_ens.txt    | awk '{print $3}' > tmp4.txt
#sed -n 3,402p IniCov4E-1_probe_ens.txt  | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/IniCov.txt
#
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
#sed -n 3,402p MesCov1E-3_probe_ens.txt  | awk '{print $3}' > tmp3.txt
#sed -n 3,402p baseline_probe_ens.txt    | awk '{print $3}' > tmp4.txt
#sed -n 3,402p MesCov1E-1_probe_ens.txt  | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/MesCov.txt
#
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
#sed -n 3,402p MesEvery08_probe_ens.txt  | awk '{print $3}' > tmp3.txt
#sed -n 3,402p baseline_probe_ens.txt    | awk '{print $3}' > tmp4.txt
#sed -n 3,402p MesEvery32_probe_ens.txt  | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/MesEvery.txt
#
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
#sed -n 3,402p MeshEvery01_probe_ens.txt | awk '{print $3}' > tmp3.txt
#sed -n 3,402p baseline_probe_ens.txt    | awk '{print $3}' > tmp4.txt
#sed -n 3,402p MeshEvery04_probe_ens.txt | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/MeshEvery.txt
#
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
#sed -n 3,402p Local0.0_probe_ens.txt    | awk '{print $3}' > tmp3.txt
#sed -n 3,402p baseline_probe_ens.txt    | awk '{print $3}' > tmp4.txt
#sed -n 3,402p Local0.5_probe_ens.txt    | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/Localization.txt
#
sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
sed -n 3,402p baseline_probe_ens.txt    | awk '{print $3}' > tmp3.txt
sed -n 3,402p VtxEns20_probe_ens.txt    | awk '{print $3}' > tmp4.txt
sed -n 3,402p VtxEns50_probe_ens.txt    | awk '{print $3}' > tmp5.txt
paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/VtxEns.txt
#
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt    | awk '{print $3}' > tmp2.txt
#sed -n 3,402p baseline_probe_ens.txt    | awk '{print $3}' > tmp3.txt
#sed -n 3,402p CovInf1.2_probe_ens.txt   | awk '{print $3}' > tmp4.txt
#sed -n 3,402p CovInf1.5_probe_ens.txt   | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/CovInf.txt
#
#sed -n 3,402p baseline_probe_ref.txt      | awk '{print $2}' > tmp1.txt
#sed -n 3,402p baseline_probe_ref.txt      | awk '{print $3}' > tmp2.txt
#sed -n 3,402p baseline_probe_ens.txt      | awk '{print $3}' > tmp3.txt
#sed -n 3,402p MesNoise1E-2_probe_ens.txt  | awk '{print $3}' > tmp4.txt
#sed -n 3,402p MesNoise1E-1_probe_ens.txt  | awk '{print $3}' > tmp5.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt > $pwd/graph/MesNoise.txt
#
#
### RMSE in time ###
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,401p EnsSize20_RMSE.txt   | awk '{print $2}' > tmp2.txt
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,401p EnsSize80_RMSE.txt   | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/EnsSize_RMSE.txt
#
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,401p IniCov1E-2_RMSE.txt  | awk '{print $2}' > tmp2.txt
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,401p IniCov4E-1_RMSE.txt  | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/IniCov_RMSE.txt
#
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,401p MesCov1E-3_RMSE.txt  | awk '{print $2}' > tmp2.txt
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,401p MesCov1E-1_RMSE.txt  | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/MesCov_RMSE.txt
#
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,401p MesEvery08_RMSE.txt  | awk '{print $2}' > tmp2.txt
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,401p MesEvery32_RMSE.txt  | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/MesEvery_RMSE.txt
#
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,401p MeshEvery01_RMSE.txt | awk '{print $2}' > tmp2.txt
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,401p MeshEvery04_RMSE.txt | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/MeshEvery_RMSE.txt
#
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,401p Local0.0_RMSE.txt    | awk '{print $2}' > tmp2.txt
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $2}' > tmp3.txt
#sed -n 2,401p Local0.5_RMSE.txt    | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/Localization_RMSE.txt
#
sed -n 2,401p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
sed -n 2,401p baseline_RMSE.txt    | awk '{print $2}' > tmp2.txt
sed -n 2,401p VtxEns20_RMSE.txt    | awk '{print $2}' > tmp3.txt
sed -n 2,401p VtxEns50_RMSE.txt    | awk '{print $2}' > tmp4.txt
paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/VtxEns_RMSE.txt
#
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $1}' > tmp1.txt
#sed -n 2,401p baseline_RMSE.txt    | awk '{print $2}' > tmp2.txt
#sed -n 2,401p CovInf1.2_RMSE.txt   | awk '{print $2}' > tmp3.txt
#sed -n 2,401p CovInf1.5_RMSE.txt   | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/CovInf_RMSE.txt
#
#sed -n 2,401p baseline_RMSE.txt      | awk '{print $1}' > tmp1.txt
#sed -n 2,401p baseline_RMSE.txt      | awk '{print $2}' > tmp2.txt
#sed -n 2,401p MesNoise1E-2_RMSE.txt  | awk '{print $2}' > tmp3.txt
#sed -n 2,401p MesNoise1E-1_RMSE.txt  | awk '{print $2}' > tmp4.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt > $pwd/graph/MesNoise_RMSE.txt
#
#
#sed -n 3,402p EnKS-F_probe_ref.txt    | awk '{print $2}'   > tmp1.txt
#sed -n 3,402p EnKS-F_probe_ref.txt    | awk '{print $3}'   > tmp2.txt
#sed -n 3,402p EnKS-F_probe_ens.txt    | awk '{print $3}'   > tmp3.txt
#sed -n 3,402p EnKS-F_probe_ens.txt    | awk '{print $4/2}' > tmp4.txt
#sed -n 3,402p EnKS-S_probe_ens.txt    | awk '{print $3}'   > tmp5.txt
#sed -n 3,402p EnKS-S_probe_ens.txt    | awk '{print $4/2}' > tmp6.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt tmp6.txt > $pwd/graph/EnKS.txt
#
#sed -n 3,402p EnKS-F_probe_ref.txt    | awk '{print $2}'   > tmp1.txt
#sed -n 3,402p EnKS-F_probe_ref.txt    | awk '{print $3}'   > tmp2.txt
#sed -n 3,402p EnKS-F-LCL_probe_ens.txt    | awk '{print $3}'   > tmp3.txt
#sed -n 3,402p EnKS-F-LCL_probe_ens.txt    | awk '{print $4/2}' > tmp4.txt
#sed -n 3,402p EnKS-S-LCL_probe_ens.txt    | awk '{print $3}'   > tmp5.txt
#sed -n 3,402p EnKS-S-LCL_probe_ens.txt    | awk '{print $4/2}' > tmp6.txt
#paste tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt tmp6.txt > $pwd/graph/EnKS-LCL.txt
#
#
#sed -n 3,402p EnKS-F_probe_mes.txt    | awk '{print $2}' > tmp1.txt
#sed -n 3,402p EnKS-F_probe_mes.txt    | awk '{print $3}' > tmp2.txt
#paste tmp1.txt tmp2.txt > $pwd/graph/Measurement.txt
#
#
rm tmp1.txt tmp2.txt tmp3.txt tmp4.txt tmp5.txt 
