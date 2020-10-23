#!/bin/sh
#
mkdir figs
#
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_000040.q 0 ./figs/EnKF_Periodic_BSL_est0040step.png
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_000200.q 0 ./figs/EnKF_Periodic_BSL_est0200step.png 
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_000600.q 0 ./figs/EnKF_Periodic_BSL_est0600step.png 
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_002000.q 0 ./figs/EnKF_Periodic_BSL_est2000step.png 
#
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_000040.q 3 ./figs/EnKF_Periodic_BSL_ref0040step.png
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_000200.q 3 ./figs/EnKF_Periodic_BSL_ref0200step.png
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_000600.q 3 ./figs/EnKF_Periodic_BSL_ref0600step.png
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_002000.q 0 ./figs/EnKF_Periodic_BSL_ref2000step.png

cd graph
python3 ../graph_u-velocity.py EnsSize
#python3 ../graph_u-velocity.py IniCov
#python3 ../graph_u-velocity.py MesCov
#python3 ../graph_u-velocity.py MeshEvery
#python3 ../graph_u-velocity.py MesEvery
#python3 ../graph_u-velocity.py MesNoise
#python3 ../graph_u-velocity.py TimeLagEns
cd ..
