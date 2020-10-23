#!/bin/sh
#
mkdir figs
#
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/bst_010010.q 1 ./figs/4DVar_Transient_BSL_est0010step.png
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/bst_010100.q 1 ./figs/4DVar_Transient_BSL_est0100step.png 
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/bst_010200.q 1 ./figs/4DVar_Transient_BSL_est0200step.png 
#
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/ref_010000.q 1 ./figs/4DVar_Transient_BSL_ref0000step.png
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/ref_010010.q 1 ./figs/4DVar_Transient_BSL_ref0010step.png
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/ref_010100.q 1 ./figs/4DVar_Transient_BSL_ref0100step.png
python3 plot3d_u-velocity.py ./case_baseline/output/mesh.g ./case_baseline/output/ref_010200.q 1 ./figs/4DVar_Transient_BSL_ref0200step.png
#
cd graph
python3 ../graph_u-velocity.py 4dvWindow
cd ..
