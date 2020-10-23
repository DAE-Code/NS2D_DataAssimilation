#!/bin/sh
#
mkdir figs
#
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_000016.q 0 ./figs/EnKF_Transient_BSL_est0016step.png
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_000048.q 0 ./figs/EnKF_Transient_BSL_est0048step.png 
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_000112.q 0 ./figs/EnKF_Transient_BSL_est0112step.png
#
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_000016.q 3 ./figs/EnKF_Transient_BSL_ref0016step.png
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_000048.q 3 ./figs/EnKF_Transient_BSL_ref0048step.png
python3 plot3d_u-velocity.py ./case_baseline/statis/mesh.g ./case_baseline/statis/stat_000112.q 3 ./figs/EnKF_Transient_BSL_ref0112step.png
#
cd graph
python3 ../graph_u-velocity.py VtxEns
cd ..
