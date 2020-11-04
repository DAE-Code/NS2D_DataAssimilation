import sys
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

def plot_uvel(infile,outfile):
    a = np.loadtxt(infile)
    plt.figure() 
    plt.plot(a.T[0], a.T[1], color="grey", linestyle="-",  label="True",linewidth=4.0)
    plt.plot(a.T[0], a.T[2], color="blue", linestyle="--", label="Window  50 steps")
    plt.plot(a.T[0], a.T[3], color="green",linestyle="--", label="Window 150 steps")
    plt.plot(a.T[0], a.T[4], color="red",  linestyle="--", label="Window 250 steps")
    plt.xlim(left=0, right=2500)
    plt.ylim(bottom=0.4, top=1.6)
    plt.xlabel('Time step')
    plt.ylabel('u-velocity')
    plt.legend()
    plt.savefig(outfile,dpi=300)
    print('--> '+outfile)

def plot_rmse(infile,outfile):
    a = np.loadtxt(infile)
    plt.figure() 
    plt.plot(a.T[0], a.T[1], color="blue", linestyle="--", label="Window  50 steps")
    plt.plot(a.T[0], a.T[2], color="green",linestyle="--", label="Window 150 steps")
    plt.plot(a.T[0], a.T[3], color="red",  linestyle="--", label="Window 250 steps")
    plt.xlim(left=0, right=2500)
    plt.ylim(bottom=0.0, top=0.6)
    plt.xlabel('Time step')
    plt.ylabel('RMSE of u-velocity')
    plt.legend()
    plt.savefig(outfile,dpi=300)
    print('--> '+outfile)

if __name__ == '__main__':
    plot_uvel(sys.argv[1]+'.txt', '4DVar_Periodic_'+sys.argv[1]+'.png')
    plot_rmse(sys.argv[1]+'_RMSE.txt', '4DVar_Periodic_'+sys.argv[1]+'_RMSE.png')
 
