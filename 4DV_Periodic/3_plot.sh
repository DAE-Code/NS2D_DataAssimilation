#!/bin/sh
#
mkdir figs
#
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/bst_010040.q 1 ./figs/4DVar_Periodic_BSL_est0040step.png
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/bst_010200.q 1 ./figs/4DVar_Periodic_BSL_est0200step.png 
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/bst_011000.q 1 ./figs/4DVar_Periodic_BSL_est1000step.png 
#
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/ref_010040.q 1 ./figs/4DVar_Periodic_BSL_ref0040step.png
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/ref_010200.q 1 ./figs/4DVar_Periodic_BSL_ref0200step.png
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/ref_011000.q 1 ./figs/4DVar_Periodic_BSL_ref1000step.png

cd graph
python3 ../graph_u-velocity.py 4dvWindow
cd ..
