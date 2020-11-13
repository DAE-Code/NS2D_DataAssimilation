***user@pc:~/work$ git clone https://github.com/DAE-Code/NS2D_DataAssimilation***

Command \'git\' not found, but can be installed with:

sudo apt install git

***user@pc:~/work$***  
***user@pc:~/work$ sudo apt install git***  
Reading package lists... Done  
Building dependency tree  
Reading state information... Done  
The following packages were automatically installed and are no longer required:  
  libfprint-2-tod1 linux-headers-5.4.0-42 linux-headers-5.4.0-42-generic linux-image-5.4.0-42-generic linux-modules-5.4.0-42-generic  
  linux-modules-extra-5.4.0-42-generic  
Use 'sudo apt autoremove' to remove them.  
The following additional packages will be installed:  
  git-man liberror-perl  
Suggested packages:  
  git-daemon-run | git-daemon-sysvinit git-doc git-el git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn  
The following NEW packages will be installed:  
  git git-man liberror-perl  
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.  
Need to get 5,464 kB of archives.  
After this operation, 38.4 MB of additional disk space will be used.  
Do you want to continue? \[Y/n\] ***y***  
Get:1 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 liberror-perl all 0.17029-1 \[26.5 kB\]  
Get:2 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 git-man all 1:2.25.1-1ubuntu3 \[884 kB\]  
Get:3 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 git amd64 1:2.25.1-1ubuntu3 \[4,554 kB\]  
Fetched 5,464 kB in 1s (9,971 kB/s)  
Selecting previously unselected package liberror-perl.  
(Reading database \... 216412 files and directories currently installed.)  
Preparing to unpack \.../liberror-perl_0.17029-1_all.deb \...  
Unpacking liberror-perl (0.17029-1) \...  
Selecting previously unselected package git-man.  
Preparing to unpack \.../git-man_1%3a2.25.1-1ubuntu3_all.deb \...  
Unpacking git-man (1:2.25.1-1ubuntu3) \...  
Selecting previously unselected package git.  
Preparing to unpack \.../git_1%3a2.25.1-1ubuntu3_amd64.deb \...  
Unpacking git (1:2.25.1-1ubuntu3) \...  
Setting up liberror-perl (0.17029-1) \...  
Setting up git-man (1:2.25.1-1ubuntu3) \...  
Setting up git (1:2.25.1-1ubuntu3) \...  
Processing triggers for man-db (2.9.1-1) \...  
***user@pc:~/work$***   
***user@pc:~/work$ git clone https://github.com/DAE-Code/NS2D_DataAssimilation***  
Cloning into 'NS2D_DataAssimilation'\...  
remote: Enumerating objects: 116, done.  
remote: Counting objects: 100% (116/116), done.  
remote: Compressing objects: 100% (81/81), done.  
remote: Total 116 (delta 68), reused 61 (delta 35), pack-reused 0  
Receiving objects: 100% (116/116), 290.55 KiB | 548.00 KiB/s, done.  
Resolving deltas: 100% (68/68), done.  
***user@pc:~/work$***   
***user@pc:~/work$ git clone https://github.com/DAE-Code/NS2D_4DVar***  
Cloning into 'NS2D_4DVar'\...  
remote: Enumerating objects: 61, done.  
remote: Counting objects: 100% (61/61), done.  
remote: Compressing objects: 100% (55/55), done.  
remote: Total 61 (delta 27), reused 27 (delta 6), pack-reused 0  
Unpacking objects: 100% (61/61), 299.97 KiB | 407.00 KiB/s, done.  
***user@pc:~/work$***   
***user@pc:~/work$ git clone https://github.com/DAE-Code/NS2D_EnKF***
Cloning into 'NS2D_EnKF'...
remote: Enumerating objects: 88, done.
remote: Counting objects: 100% (88/88), done.
remote: Compressing objects: 100% (88/88), done.
remote: Total 88 (delta 45), reused 18 (delta 0), pack-reused 0
Unpacking objects: 100% (88/88), 301.65 KiB | 550.00 KiB/s, done.
***user@pc:~/work$***
***user@pc:~/work$ cd NS2D_4DVar/src***  
***user@pc:~/work/NS2D_4DVar/src$ make***  

Command 'make' not found, but can be installed with:  

sudo apt install make        # version 4.2.1-1.2, or  
sudo apt install make-guile  # version 4.2.1-1.2  

***user@pc:~/work/NS2D_4DVar/src$***  
***user@pc:~/work/NS2D_4DVar/src$ sudo apt install make***  
Reading package lists\... Done  
Building dependency tree  
Reading state information... Done  
The following packages were automatically installed and are no longer required:  
  libfprint-2-tod1 linux-headers-5.4.0-42 linux-headers-5.4.0-42-generic linux-image-5.4.0-42-generic linux-modules-5.4.0-42-generic  
  linux-modules-extra-5.4.0-42-generic  
Use 'sudo apt autoremove' to remove them.  
Suggested packages:  
  make-doc  
The following NEW packages will be installed:  
  make  
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.  
Need to get 162 kB of archives.  
After this operation, 393 kB of additional disk space will be used.  
Get:1 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 make amd64 4.2.1-1.2 \[162 kB\]  
Fetched 162 kB in 0s (1,923 kB/s)  
Selecting previously unselected package make.  
(Reading database \... 217347 files and directories currently installed.)  
Preparing to unpack \.../make_4.2.1-1.2_amd64.deb \...  
Unpacking make (4.2.1-1.2) \...  
Setting up make (4.2.1-1.2) \...  
Processing triggers for man-db (2.9.1-1) \...  
***user@pc:~/work/NS2D_4DVar/src$***  
***user@pc:~/work/NS2D_4DVar/src$ make***  
gfortran -c -O3 -cpp -fno-range-check  -c -o mod_variables.o mod_variables.f90  
make: gfortran: Command not found  
make: \*** \[makefile:37: mod_variables.o\] Error 127  

***user@pc:~/work/NS2D_4DVar/src$***  
***user@pc:~/work/NS2D_4DVar/src$ sudo apt install gfortran***  
Reading package lists... Done  
Building dependency tree       
Reading state information... Done  
The following packages were automatically installed and are no longer required:  
  libfprint-2-tod1 linux-headers-5.4.0-42 linux-headers-5.4.0-42-generic linux-image-5.4.0-42-generic linux-modules-5.4.0-42-generic  
  linux-modules-extra-5.4.0-42-generic  
Use 'sudo apt autoremove' to remove them.  
The following additional packages will be installed:  
  binutils binutils-common binutils-x86-64-linux-gnu gcc gcc-9 gfortran-9 libasan5 libatomic1 libbinutils libc-dev-bin libc6-dev libcrypt-dev  
  libctf-nobfd0 libctf0 libgcc-9-dev libgfortran-9-dev libgfortran5 libitm1 liblsan0 libquadmath0 libtsan0 libubsan1 linux-libc-dev manpages-dev  
Suggested packages:  
  binutils-doc gcc-multilib autoconf automake libtool flex bison gcc-doc gcc-9-multilib gcc-9-doc gcc-9-locales gfortran-multilib gfortran-doc  
  gfortran-9-multilib gfortran-9-doc libcoarrays-dev glibc-doc  
The following NEW packages will be installed:  
  binutils binutils-common binutils-x86-64-linux-gnu gcc gcc-9 gfortran gfortran-9 libasan5 libatomic1 libbinutils libc-dev-bin libc6-dev  
  libcrypt-dev libctf-nobfd0 libctf0 libgcc-9-dev libgfortran-9-dev libgfortran5 libitm1 liblsan0 libquadmath0 libtsan0 libubsan1 linux-libc-dev  
  manpages-dev  
0 upgraded, 25 newly installed, 0 to remove and 0 not upgraded.  
Need to get 29.6 MB of archives.  
After this operation, 129 MB of additional disk space will be used.  
Do you want to continue? \[Y/n]\ ***y***    
Get:1 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 binutils-common amd64 2.34-6ubuntu1 \[207 kB\]  
Get:2 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 libbinutils amd64 2.34-6ubuntu1 \[474 kB\]  
Get:3 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 libctf-nobfd0 amd64 2.34-6ubuntu1 \[47.0 kB\]  
Get:4 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 libctf0 amd64 2.34-6ubuntu1 \[46.6 kB\]  
Get:5 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 binutils-x86-64-linux-gnu amd64 2.34-6ubuntu1 \[1,614 kB\]  
Get:6 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 binutils amd64 2.34-6ubuntu1 \[3,376 B\]  
Get:7 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libitm1 amd64 10.2.0-5ubuntu1~20.04 \[26.4 kB\]  
Get:8 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libatomic1 amd64 10.2.0-5ubuntu1~20.04 \[9,300 B\]  
Get:9 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libasan5 amd64 9.3.0-17ubuntu1~20.04 \[394 kB\]  
Get:10 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 liblsan0 amd64 10.2.0-5ubuntu1~20.04 \[144 kB\]  
Get:11 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libtsan0 amd64 10.2.0-5ubuntu1~20.04 \[320 kB\]  
Get:12 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libubsan1 amd64 10.2.0-5ubuntu1~20.04 \[136 kB\]  
Get:13 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libquadmath0 amd64 10.2.0-5ubuntu1~20.04 \[146 kB\]  
Get:14 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libgcc-9-dev amd64 9.3.0-17ubuntu1~20.04 \[2,360 kB\]  
Get:15 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 gcc-9 amd64 9.3.0-17ubuntu1~20.04 \[8,241 kB\]  
Get:16 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 gcc amd64 4:9.3.0-1ubuntu2 \[5,208 B\]  
Get:17 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libgfortran5 amd64 10.2.0-5ubuntu1~20.04 \[736 kB\]  
Get:18 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libgfortran-9-dev amd64 9.3.0-17ubuntu1~20.04 \[684 kB\]  
Get:19 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libc-dev-bin amd64 2.31-0ubuntu9.1 \[71.7 kB\]  
Get:20 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 linux-libc-dev amd64 5.4.0-52.57 \[1,138 kB\]  
Get:21 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 libcrypt-dev amd64 1:4.4.10-10ubuntu4 \[104 kB\]  
Get:22 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libc6-dev amd64 2.31-0ubuntu9.1 \[2,519 kB\]  
Get:23 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 gfortran-9 amd64 9.3.0-17ubuntu1~20.04 \[7,921 kB\]  
Get:24 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 gfortran amd64 4:9.3.0-1ubuntu2 \[1,372 B\]  
Get:25 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 manpages-dev all 5.05-1 \[2,266 kB\]  
Fetched 29.6 MB in 3s (9,234 kB/s)       
Selecting previously unselected package binutils-common:amd64.  
(Reading database \... 217363 files and directories currently installed.)  
Preparing to unpack \.../00-binutils-common_2.34-6ubuntu1_amd64.deb \...  
Unpacking binutils-common:amd64 (2.34-6ubuntu1) \...  
Selecting previously unselected package libbinutils:amd64.  
Preparing to unpack \.../01-libbinutils_2.34-6ubuntu1_amd64.deb \...  
Unpacking libbinutils:amd64 (2.34-6ubuntu1) \...  
Selecting previously unselected package libctf-nobfd0:amd64.  
Preparing to unpack \.../02-libctf-nobfd0_2.34-6ubuntu1_amd64.deb \...  
Unpacking libctf-nobfd0:amd64 (2.34-6ubuntu1) \...  
Selecting previously unselected package libctf0:amd64.  
Preparing to unpack \.../03-libctf0_2.34-6ubuntu1_amd64.deb \...  
Unpacking libctf0:amd64 (2.34-6ubuntu1) ...  
Selecting previously unselected package binutils-x86-64-linux-gnu.  
Preparing to unpack .../04-binutils-x86-64-linux-gnu_2.34-6ubuntu1_amd64.deb ...  
Unpacking binutils-x86-64-linux-gnu (2.34-6ubuntu1) ...  
Selecting previously unselected package binutils.  
Preparing to unpack .../05-binutils_2.34-6ubuntu1_amd64.deb ...  
Unpacking binutils (2.34-6ubuntu1) ...  
Selecting previously unselected package libitm1:amd64.  
Preparing to unpack .../06-libitm1_10.2.0-5ubuntu1~20.04_amd64.deb ...  
Unpacking libitm1:amd64 (10.2.0-5ubuntu1~20.04) ...  
Selecting previously unselected package libatomic1:amd64.  
Preparing to unpack .../07-libatomic1_10.2.0-5ubuntu1~20.04_amd64.deb ...  
Unpacking libatomic1:amd64 (10.2.0-5ubuntu1~20.04) ...  
Selecting previously unselected package libasan5:amd64.  
Preparing to unpack .../08-libasan5_9.3.0-17ubuntu1~20.04_amd64.deb ...  
Unpacking libasan5:amd64 (9.3.0-17ubuntu1~20.04) ...  
Selecting previously unselected package liblsan0:amd64.  
Preparing to unpack .../09-liblsan0_10.2.0-5ubuntu1~20.04_amd64.deb ...  
Unpacking liblsan0:amd64 (10.2.0-5ubuntu1~20.04) ...  
Selecting previously unselected package libtsan0:amd64.  
Preparing to unpack .../10-libtsan0_10.2.0-5ubuntu1~20.04_amd64.deb ...  
Unpacking libtsan0:amd64 (10.2.0-5ubuntu1~20.04) ...  
Selecting previously unselected package libubsan1:amd64.  
Preparing to unpack .../11-libubsan1_10.2.0-5ubuntu1~20.04_amd64.deb ...  
Unpacking libubsan1:amd64 (10.2.0-5ubuntu1~20.04) ...  
Selecting previously unselected package libquadmath0:amd64.  
Preparing to unpack .../12-libquadmath0_10.2.0-5ubuntu1~20.04_amd64.deb ...  
Unpacking libquadmath0:amd64 (10.2.0-5ubuntu1~20.04) ...  
Selecting previously unselected package libgcc-9-dev:amd64.  
Preparing to unpack .../13-libgcc-9-dev_9.3.0-17ubuntu1~20.04_amd64.deb ...  
Unpacking libgcc-9-dev:amd64 (9.3.0-17ubuntu1~20.04) ...  
Selecting previously unselected package gcc-9.  
Preparing to unpack .../14-gcc-9_9.3.0-17ubuntu1~20.04_amd64.deb ...  
Unpacking gcc-9 (9.3.0-17ubuntu1~20.04) ...  
Selecting previously unselected package gcc.  
Preparing to unpack .../15-gcc_4%3a9.3.0-1ubuntu2_amd64.deb ...  
Unpacking gcc (4:9.3.0-1ubuntu2) ...  
Selecting previously unselected package libgfortran5:amd64.  
Preparing to unpack .../16-libgfortran5_10.2.0-5ubuntu1~20.04_amd64.deb ...  
Unpacking libgfortran5:amd64 (10.2.0-5ubuntu1~20.04) ...  
Selecting previously unselected package libgfortran-9-dev:amd64.  
Preparing to unpack .../17-libgfortran-9-dev_9.3.0-17ubuntu1~20.04_amd64.deb ...  
Unpacking libgfortran-9-dev:amd64 (9.3.0-17ubuntu1~20.04) ...  
Selecting previously unselected package libc-dev-bin.  
Preparing to unpack .../18-libc-dev-bin_2.31-0ubuntu9.1_amd64.deb ...  
Unpacking libc-dev-bin (2.31-0ubuntu9.1) ...  
Selecting previously unselected package linux-libc-dev:amd64.  
Preparing to unpack .../19-linux-libc-dev_5.4.0-52.57_amd64.deb ...  
Unpacking linux-libc-dev:amd64 (5.4.0-52.57) ...  
Selecting previously unselected package libcrypt-dev:amd64.  
Preparing to unpack .../20-libcrypt-dev_1%3a4.4.10-10ubuntu4_amd64.deb ...  
Unpacking libcrypt-dev:amd64 (1:4.4.10-10ubuntu4) ...  
Selecting previously unselected package libc6-dev:amd64.  
Preparing to unpack .../21-libc6-dev_2.31-0ubuntu9.1_amd64.deb ...  
Unpacking libc6-dev:amd64 (2.31-0ubuntu9.1) ...  
Selecting previously unselected package gfortran-9.  
Preparing to unpack .../22-gfortran-9_9.3.0-17ubuntu1~20.04_amd64.deb ...  
Unpacking gfortran-9 (9.3.0-17ubuntu1~20.04) ...  
Selecting previously unselected package gfortran.  
Preparing to unpack .../23-gfortran_4%3a9.3.0-1ubuntu2_amd64.deb ...  
Unpacking gfortran (4:9.3.0-1ubuntu2) ...  
Selecting previously unselected package manpages-dev.  
Preparing to unpack .../24-manpages-dev_5.05-1_all.deb ...  
Unpacking manpages-dev (5.05-1) ...  
Setting up manpages-dev (5.05-1) ...  
Setting up binutils-common:amd64 (2.34-6ubuntu1) ...  
Setting up linux-libc-dev:amd64 (5.4.0-52.57) ...  
Setting up libctf-nobfd0:amd64 (2.34-6ubuntu1) ...  
Setting up libasan5:amd64 (9.3.0-17ubuntu1~20.04) ...  
Setting up libquadmath0:amd64 (10.2.0-5ubuntu1~20.04) ...  
Setting up libatomic1:amd64 (10.2.0-5ubuntu1~20.04) ...  
Setting up libgfortran5:amd64 (10.2.0-5ubuntu1~20.04) ...  
Setting up libubsan1:amd64 (10.2.0-5ubuntu1~20.04) ...  
Setting up libcrypt-dev:amd64 (1:4.4.10-10ubuntu4) ...  
Setting up libbinutils:amd64 (2.34-6ubuntu1) ...  
Setting up libc-dev-bin (2.31-0ubuntu9.1) ...  
Setting up liblsan0:amd64 (10.2.0-5ubuntu1~20.04) ...  
Setting up libitm1:amd64 (10.2.0-5ubuntu1~20.04) ...  
Setting up libtsan0:amd64 (10.2.0-5ubuntu1~20.04) ...  
Setting up libctf0:amd64 (2.34-6ubuntu1) ...  
Setting up libgcc-9-dev:amd64 (9.3.0-17ubuntu1~20.04) ...  
Setting up libc6-dev:amd64 (2.31-0ubuntu9.1) ...  
Setting up binutils-x86-64-linux-gnu (2.34-6ubuntu1) ...  
Setting up libgfortran-9-dev:amd64 (9.3.0-17ubuntu1~20.04) ...  
Setting up binutils (2.34-6ubuntu1) ...  
Setting up gcc-9 (9.3.0-17ubuntu1~20.04) ...  
Setting up gfortran-9 (9.3.0-17ubuntu1~20.04) ...  
Setting up gcc (4:9.3.0-1ubuntu2) ...  
Setting up gfortran (4:9.3.0-1ubuntu2) ...  
update-alternatives: using /usr/bin/gfortran to provide /usr/bin/f95 (f95) in auto mode  
update-alternatives: using /usr/bin/gfortran to provide /usr/bin/f77 (f77) in auto mode  
Processing triggers for man-db (2.9.1-1) ...  
Processing triggers for libc-bin (2.31-0ubuntu9.1) ...##########################################################################################..]   
***pc:~/work/NS2D_4DVar/src$*** 
***pc:~/work/NS2D_4DVar/src$ make***  
***pc:~/work/NS2D_4DVar/src$*** 
***pc:~/work/NS2D_4DVar/src$ cd ../../NS2D_EnKF/src*** 
***pc:~/work/NS2D_EnKF/src$ make***  
gfortran -c -O3 -cpp -fno-range-check  -c -o mod_variables.o mod_variables.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o m_random3.o m_random3.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o m_ranmean3.o m_ranmean3.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o m_ranvar3.o m_ranvar3.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o sub_kfilter.o sub_kfilter.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o sub_measure.o sub_measure.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o sub_utils.o sub_utils.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o sub_bc_outer.o sub_bc_outer.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o sub_bc_wall.o sub_bc_wall.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o sub_hsmac.o sub_hsmac.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o sub_initial.o sub_initial.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o sub_plot3d.o sub_plot3d.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o sub_rhs3rd.o sub_rhs3rd.f90  
gfortran -c -O3 -cpp -fno-range-check  -c -o NS2D_EnKF.o NS2D_EnKF.f90  
test -f svd.f || wget -O svd.f http://www.netlib.no/netlib/eispack/svd.f  
--2020-11-10 14:46:37--  http://www.netlib.no/netlib/eispack/svd.f  
Resolving www.netlib.no (www.netlib.no)... 129.177.16.246  
Connecting to www.netlib.no (www.netlib.no)|129.177.16.246|:80... connected.  
HTTP request sent, awaiting response... 200 OK 
Length: 9990 (9.8K) [text/plain]  
Saving to: ‘svd.f’  

svd.f                                 100%[=======================================================================>]   9.76K  --.-KB/s    in 0s        

2020-11-10 14:46:39 (58.0 MB/s) - ‘svd.f’ saved [9990/9990]  

gfortran -c -O3 -cpp -fno-range-check  -c -o svd.o svd.f  
svd.f:77:72:  

   77 |          do 100 j = 1, n  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: Shared DO termination label 100 at (1)  
svd.f:94:72:  

   94 |   120    scale = scale + dabs(u(k,i))  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 120 at (1)  
svd.f:113:72:  

  113 |   140       s = s + u(k,i) * u(k,j)  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 140 at (1)  
svd.f:117:72:  

  117 |             do 150 k = i, m  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: Shared DO termination label 150 at (1)  
svd.f:122:72:  

  122 |   200    u(k,i) = scale * u(k,i)  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 200 at (1)  
svd.f:131:72:  

  131 |   220    scale = scale + dabs(u(i,k))  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 220 at (1)  
svd.f:146:72:  

  146 |   240    rv1(k) = u(i,k) / h  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 240 at (1)  
svd.f:154:72:  

  154 |   250       s = s + u(j,k) * u(i,k)  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 250 at (1)  
svd.f:156:72:  

  156 |             do 260 k = l, n   
      |                                                                        1  
Warning: Fortran 2018 deleted feature: Shared DO termination label 260 at (1)  
svd.f:161:72:  

  161 |   280    u(i,k) = scale * u(i,k)  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 280 at (1)  
svd.f:175:72:  

  175 |   320    v(j,i) = (u(i,j) / u(i,l)) / g  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 320 at (1)  
svd.f:181:72:  

  181 |   340       s = s + u(i,k) * v(k,j)  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 340 at (1)  
svd.f:183:72:  

  183 |             do 350 k = l, n  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: Shared DO termination label 350 at (1)  
svd.f:209:72:  

  209 |   420    u(i,j) = 0.0d0  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 420 at (1)  
svd.f:218:72:  

  218 |   440       s = s + u(k,i) * u(k,j)  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 440 at (1)  
svd.f:222:72:  

  222 |             do 450 k = i, m  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: Shared DO termination label 450 at (1)  
svd.f:227:72:  

  227 |   470    u(j,i) = u(j,i) / g  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 470 at (1)  
svd.f:232:72:  

  232 |   480    u(j,i) = 0.0d0  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 480 at (1)  
svd.f:349:72:  

  349 |   690    v(j,k) = -v(j,k)  
      |                                                                        1  
Warning: Fortran 2018 deleted feature: DO termination statement which is not END DO or CONTINUE with label 690 at (1)  
test -f pythag.f || wget -O pythag.f http://www.netlib.no/netlib/eispack/3090vf/double/pythag.f  
--2020-11-10 14:46:39--  http://www.netlib.no/netlib/eispack/3090vf/double/pythag.f  
Resolving www.netlib.no (www.netlib.no)... 129.177.16.246  
Connecting to www.netlib.no (www.netlib.no)|129.177.16.246|:80... connected.  
HTTP request sent, awaiting response... 200 OK  
Length: 503 [text/plain]  
Saving to: ‘pythag.f’  

pythag.f                              100%[=======================================================================>]     503  --.-KB/s    in 0s      

2020-11-10 14:46:39 (16.7 MB/s) - ‘pythag.f’ saved [503/503]  

gfortran -c -O3 -cpp -fno-range-check  -c -o pythag.o pythag.f  
gfortran  -o ./enkf  mod_variables.o m_random3.o m_ranmean3.o m_ranvar3.o sub_kfilter.o sub_measure.o sub_utils.o sub_bc_outer.o sub_bc_wall.o sub_hsmac.o sub_initial.o sub_plot3d.o sub_rhs3rd.o NS2D_EnKF.o svd.o pythag.o    
***user@pc:~/work/NS2D_EnKF/src$***  
***user@pc:~/work/NS2D_DataAssimilation$ sudo apt install python3 python3-pip -y***  
Reading package lists... Done  
Building dependency tree       
Reading state information... Done  
python3 is already the newest version (3.8.2-0ubuntu2).  
python3 set to manually installed.  
The following packages were automatically installed and are no longer required:  
  libfprint-2-tod1 linux-headers-5.4.0-42 linux-headers-5.4.0-42-generic linux-image-5.4.0-42-generic linux-modules-5.4.0-42-generic  
  linux-modules-extra-5.4.0-42-generic  
Use 'sudo apt autoremove' to remove them.  
The following additional packages will be installed:  
  build-essential dpkg-dev fakeroot g++ g++-9 libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libexpat1-dev libfakeroot  
  libpython3-dev libpython3.8-dev libstdc++-9-dev python-pip-whl python3-dev python3-distutils python3-setuptools python3-wheel python3.8-dev  
  zlib1g-dev  
Suggested packages:  
  debian-keyring g++-multilib g++-9-multilib gcc-9-doc libstdc++-9-doc python-setuptools-doc  
The following NEW packages will be installed:  
  build-essential dpkg-dev fakeroot g++ g++-9 libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libexpat1-dev libfakeroot  
  libpython3-dev libpython3.8-dev libstdc++-9-dev python-pip-whl python3-dev python3-distutils python3-pip python3-setuptools python3-wheel  
  python3.8-dev zlib1g-dev  
0 upgraded, 21 newly installed, 0 to remove and 0 not upgraded.  
Need to get 18.2 MB of archives.  
After this operation, 77.9 MB of additional disk space will be used.  
Get:1 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libstdc++-9-dev amd64 9.3.0-17ubuntu1~20.04 [1,714 kB]  
Get:2 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 g++-9 amd64 9.3.0-17ubuntu1~20.04 [8,405 kB]  
Get:3 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 g++ amd64 4:9.3.0-1ubuntu2 [1,604 B]  
Get:4 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 dpkg-dev all 1.19.7ubuntu3 [679 kB]  
Get:5 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 build-essential amd64 12.8ubuntu1.1 [4,664 B]  
Get:6 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 libfakeroot amd64 1.24-1 [25.7 kB]  
Get:7 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 fakeroot amd64 1.24-1 [62.6 kB]   
Get:8 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 libalgorithm-diff-perl all 1.19.03-2 [46.6 kB]  
Get:9 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 libalgorithm-diff-xs-perl amd64 0.04-6 [11.3 kB]  
Get:10 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 libalgorithm-merge-perl all 0.08-3 [12.0 kB]  
Get:11 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 libexpat1-dev amd64 2.2.9-1build1 [116 kB]  
Get:12 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 libpython3.8-dev amd64 3.8.5-1~20.04 [3,941 kB]  
Get:13 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 libpython3-dev amd64 3.8.2-0ubuntu2 [7,236 B]  
Get:14 http://jp.archive.ubuntu.com/ubuntu focal-updates/universe amd64 python-pip-whl all 20.0.2-5ubuntu1.1 [1,799 kB]  
Get:15 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 zlib1g-dev amd64 1:1.2.11.dfsg-2ubuntu1.2 [155 kB]  
Get:16 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 python3.8-dev amd64 3.8.5-1~20.04 [514 kB]  
Get:17 http://jp.archive.ubuntu.com/ubuntu focal-updates/main amd64 python3-distutils all 3.8.5-1~20.04.1 [141 kB]  
Get:18 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 python3-dev amd64 3.8.2-0ubuntu2 [1,212 B]  
Get:19 http://jp.archive.ubuntu.com/ubuntu focal/main amd64 python3-setuptools all 45.2.0-1 [330 kB]  
Get:20 http://jp.archive.ubuntu.com/ubuntu focal/universe amd64 python3-wheel all 0.34.2-1 [23.8 kB]  
Get:21 http://jp.archive.ubuntu.com/ubuntu focal-updates/universe amd64 python3-pip all 20.0.2-5ubuntu1.1 [230 kB]  
Fetched 18.2 MB in 2s (10.6 MB/s)       
Selecting previously unselected package libstdc++-9-dev:amd64.  
(Reading database ... 221614 files and directories currently installed.)  
Preparing to unpack .../00-libstdc++-9-dev_9.3.0-17ubuntu1~20.04_amd64.deb ...  
Unpacking libstdc++-9-dev:amd64 (9.3.0-17ubuntu1~20.04) ...  
Selecting previously unselected package g++-9.  
Preparing to unpack .../01-g++-9_9.3.0-17ubuntu1~20.04_amd64.deb ...  
Unpacking g++-9 (9.3.0-17ubuntu1~20.04) ...  
Selecting previously unselected package g++.  
Preparing to unpack .../02-g++_4%3a9.3.0-1ubuntu2_amd64.deb ...  
Unpacking g++ (4:9.3.0-1ubuntu2) ...  
Selecting previously unselected package dpkg-dev.  
Preparing to unpack .../03-dpkg-dev_1.19.7ubuntu3_all.deb ...  
Unpacking dpkg-dev (1.19.7ubuntu3) ...  
Selecting previously unselected package build-essential.  
Preparing to unpack .../04-build-essential_12.8ubuntu1.1_amd64.deb ...  
Unpacking build-essential (12.8ubuntu1.1) ...  
Selecting previously unselected package libfakeroot:amd64.   
Preparing to unpack .../05-libfakeroot_1.24-1_amd64.deb ...  
Unpacking libfakeroot:amd64 (1.24-1) ...  
Selecting previously unselected package fakeroot.  
Preparing to unpack .../06-fakeroot_1.24-1_amd64.deb ...  
Unpacking fakeroot (1.24-1) ...  
Selecting previously unselected package libalgorithm-diff-perl.  
Preparing to unpack .../07-libalgorithm-diff-perl_1.19.03-2_all.deb ...  
Unpacking libalgorithm-diff-perl (1.19.03-2) ...  
Selecting previously unselected package libalgorithm-diff-xs-perl.  
Preparing to unpack .../08-libalgorithm-diff-xs-perl_0.04-6_amd64.deb ...  
Unpacking libalgorithm-diff-xs-perl (0.04-6) ...  
Selecting previously unselected package libalgorithm-merge-perl.  
Preparing to unpack .../09-libalgorithm-merge-perl_0.08-3_all.deb ...  
Unpacking libalgorithm-merge-perl (0.08-3) ...  
Selecting previously unselected package libexpat1-dev:amd64.  
Preparing to unpack .../10-libexpat1-dev_2.2.9-1build1_amd64.deb ...  
Unpacking libexpat1-dev:amd64 (2.2.9-1build1) ...  
Selecting previously unselected package libpython3.8-dev:amd64.  
Preparing to unpack .../11-libpython3.8-dev_3.8.5-1~20.04_amd64.deb ...  
Unpacking libpython3.8-dev:amd64 (3.8.5-1~20.04) ...  
Selecting previously unselected package libpython3-dev:amd64.  
Preparing to unpack .../12-libpython3-dev_3.8.2-0ubuntu2_amd64.deb ...  
Unpacking libpython3-dev:amd64 (3.8.2-0ubuntu2) ...  
Selecting previously unselected package python-pip-whl.  
Preparing to unpack .../13-python-pip-whl_20.0.2-5ubuntu1.1_all.deb ...  
Unpacking python-pip-whl (20.0.2-5ubuntu1.1) ...  
Selecting previously unselected package zlib1g-dev:amd64.  
Preparing to unpack .../14-zlib1g-dev_1%3a1.2.11.dfsg-2ubuntu1.2_amd64.deb ...  
Unpacking zlib1g-dev:amd64 (1:1.2.11.dfsg-2ubuntu1.2) ...  
Selecting previously unselected package python3.8-dev.  
Preparing to unpack .../15-python3.8-dev_3.8.5-1~20.04_amd64.deb ...  
Unpacking python3.8-dev (3.8.5-1~20.04) ...  
Selecting previously unselected package python3-distutils.  
Preparing to unpack .../16-python3-distutils_3.8.5-1~20.04.1_all.deb ...  
Unpacking python3-distutils (3.8.5-1~20.04.1) ...  
Selecting previously unselected package python3-dev.  
Preparing to unpack .../17-python3-dev_3.8.2-0ubuntu2_amd64.deb ...  
Unpacking python3-dev (3.8.2-0ubuntu2) ...  
Selecting previously unselected package python3-setuptools.  
Preparing to unpack .../18-python3-setuptools_45.2.0-1_all.deb ...  
Unpacking python3-setuptools (45.2.0-1) ...  
Selecting previously unselected package python3-wheel.  
Preparing to unpack .../19-python3-wheel_0.34.2-1_all.deb ...  
Unpacking python3-wheel (0.34.2-1) ...  
Selecting previously unselected package python3-pip.  
Preparing to unpack .../20-python3-pip_20.0.2-5ubuntu1.1_all.deb ...  
Unpacking python3-pip (20.0.2-5ubuntu1.1) ...  
Setting up python3-distutils (3.8.5-1~20.04.1) ...  
Setting up python3-setuptools (45.2.0-1) ...  
Setting up libstdc++-9-dev:amd64 (9.3.0-17ubuntu1~20.04) ...  
Setting up libalgorithm-diff-perl (1.19.03-2) ...  
Setting up python3-wheel (0.34.2-1) ...  
Setting up libfakeroot:amd64 (1.24-1) ...  
Setting up dpkg-dev (1.19.7ubuntu3) ...  
Setting up fakeroot (1.24-1) ...  
update-alternatives: using /usr/bin/fakeroot-sysv to provide /usr/bin/fakeroot (fakeroot) in auto mode  
Setting up libexpat1-dev:amd64 (2.2.9-1build1) ...  
Setting up libpython3.8-dev:amd64 (3.8.5-1~20.04) ...  
Setting up g++-9 (9.3.0-17ubuntu1~20.04) ...  
Setting up zlib1g-dev:amd64 (1:1.2.11.dfsg-2ubuntu1.2) ...  
Setting up g++ (4:9.3.0-1ubuntu2) ...  
update-alternatives: using /usr/bin/g++ to provide /usr/bin/c++ (c++) in auto mode  
Setting up build-essential (12.8ubuntu1.1) ... 
Setting up python-pip-whl (20.0.2-5ubuntu1.1) ...  
Setting up libalgorithm-diff-xs-perl (0.04-6) ...  
Setting up libalgorithm-merge-perl (0.08-3) ...  
Setting up libpython3-dev:amd64 (3.8.2-0ubuntu2) ...  
Setting up python3-pip (20.0.2-5ubuntu1.1) ...  
Setting up python3.8-dev (3.8.5-1~20.04) ...  
Setting up python3-dev (3.8.2-0ubuntu2) ...  
Processing triggers for man-db (2.9.1-1) ...  
Processing triggers for libc-bin (2.31-0ubuntu9.1) ...    
***user@pc:~/work/NS2D_DataAssimilation$***  
***user@pc:~/work/NS2D_DataAssimilation$ sudo pip3 install numpy***  
Collecting numpy  
  Downloading numpy-1.19.4-cp38-cp38-manylinux2010_x86_64.whl (14.5 MB)  
     |????????????????????????????????| 14.5 MB 17.7 MB/s   
Installing collected packages: numpy  
Successfully installed numpy-1.19.4    
***user@pc:~/work/NS2D_DataAssimilation$***
***user@pc:~/work/NS2D_DataAssimilation$ sudo pip3 install scipy***  
Collecting scipy  
  Downloading scipy-1.5.4-cp38-cp38-manylinux1_x86_64.whl (25.8 MB)  
     |????????????????????????????????| 25.8 MB 10.7 MB/s   
Requirement already satisfied: numpy>=1.14.5 in /usr/local/lib/python3.8/dist-packages (from scipy) (1.19.4)  
Installing collected packages: scipy  
Successfully installed scipy-1.5.4   
***user@pc:~/work/NS2D_DataAssimilation$***
***user@pc:~/work/NS2D_DataAssimilation$ sudo pip3 install matplotlib***  
Collecting matplotlib  
  Downloading matplotlib-3.3.2-cp38-cp38-manylinux1_x86_64.whl (11.6 MB)  
     |????????????????????????????????| 11.6 MB 1.1 MB/s   
Requirement already satisfied: pillow>=6.2.0 in /usr/lib/python3/dist-packages (from matplotlib) (7.0.0)  
Collecting kiwisolver>=1.0.1    
  Downloading kiwisolver-1.3.1-cp38-cp38-manylinux1_x86_64.whl (1.2 MB)    
     |????????????????????????????????| 1.2 MB 11.2 MB/s   
Requirement already satisfied: python-dateutil>=2.1 in /usr/lib/python3/dist-packages (from matplotlib) (2.7.3)  
Collecting cycler>=0.10  
  Downloading cycler-0.10.0-py2.py3-none-any.whl (6.5 kB)  
Requirement already satisfied: numpy>=1.15 in /usr/local/lib/python3.8/dist-packages (from matplotlib) (1.19.4)  
Collecting certifi>=2020.06.20  
  Downloading certifi-2020.11.8-py2.py3-none-any.whl (155 kB)  
     |????????????????????????????????| 155 kB 11.3 MB/s   
Collecting pyparsing!=2.0.4,!=2.1.2,!=2.1.6,>=2.0.3  
  Downloading pyparsing-2.4.7-py2.py3-none-any.whl (67 kB)  
     |????????????????????????????????| 67 kB 5.0 MB/s  
Requirement already satisfied: six in /usr/lib/python3/dist-packages (from cycler>=0.10->matplotlib) (1.14.0)  
Installing collected packages: kiwisolver, cycler, certifi, pyparsing, matplotlib  
  Attempting uninstall: certifi  
    Found existing installation: certifi 2019.11.28  
    Not uninstalling certifi at /usr/lib/python3/dist-packages, outside environment /usr  
    Can't uninstall 'certifi'. No files were found to uninstall.  
Successfully installed certifi-2020.11.8 cycler-0.10.0 kiwisolver-1.3.1 matplotlib-3.3.2 pyparsing-2.4.7  
***user@pc:~/work/NS2D_DataAssimilation$***  
***user@pc:~/work/NS2D_DataAssimilation$ ./runALL.sh***  
