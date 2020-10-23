#!usr/bin/python
# -*- coding: UTF-8 -*-

import sys
import numpy as np
from scipy import io
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import matplotlib.patches as patches
from mpl_toolkits.axes_grid1 import make_axes_locatable


# g file
fp = io.FortranFile(sys.argv[1],"r")
fp.read_ints(np.int32)
index = fp.read_record(np.dtype(('<i4',(1,))), np.dtype(('<i4',(1,))))
imax, jmax = index[0],index[1]
xx = fp.read_record(np.dtype(('<f4',imax*jmax)),np.dtype(('<f4',imax*jmax)),np.dtype(('<i4',imax*jmax)))
fp.close()
          
imx = int(imax)
jmx = int(jmax)
x  = xx[0].reshape([imx,jmx], order='F')
y  = xx[1].reshape([imx,jmx], order='F')
ib = xx[2].reshape([imx,jmx], order='F') 

# q file
fp = io.FortranFile(sys.argv[2],"r")
fp.read_ints(np.int32)
index = fp.read_record(np.dtype(('<i4',(1,))), np.dtype(('<i4',(1,))))
imax, jmax = index[0],index[1]
param = fp.read_record(np.dtype(('<f4',(4))))
uu = fp.read_record(np.dtype(('<f4',imax*jmax)),np.dtype(('<f4',imax*jmax)),np.dtype(('<f4',imax*jmax)),np.dtype(('<f4',imax*jmax)))
fp.close()

q = uu[int(sys.argv[3])].reshape([imx,jmx], order='F')

# plot
fig = plt.figure(dpi=150)
ax = plt.axes()
levels = [-0.6, -0.4, -0.2, 0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4]
plt.contourf(x, y, q, levels, cmap='gray')
plt.gca().set_aspect('equal', adjustable='box')
plt.xlim(left=-5,right=20)
plt.ylim(bottom=-4,top=4)
plt.xlabel('x')
plt.ylabel('y')
s = patches.Rectangle(xy=(-0.5, -0.5), width=1.0, height=1.0, ec='w', fc='w', fill=True)
ax.add_patch(s)
divider = make_axes_locatable(ax)
cax = divider.append_axes("right", size="5%", pad=0.2)
plt.colorbar(cax=cax)
fig.savefig(sys.argv[4],dpi=300,bbox_inches='tight')
print('-->',sys.argv[4])
