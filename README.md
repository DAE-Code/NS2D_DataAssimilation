# NS2D_DataAssimilation

2次元ナビエ・ストークス方程式を用いた角柱まわりのカルマン渦列流れにおいてデータ同化を行うための入力ファイルおよびスクリプトです．「データ同化流体科学－流動現象のデジタルツイン－」（共立出版）の内容とリンクしておりますので，書籍と合わせてご利用頂くと効果的です．

アンサンブルカルマンフィルタおよび4次元変分法によるデータ同化において，計算の実行から結果の可視化までを一括して行うためのシェルスクリプトが用意されています．上記書籍の第4章および第5章の図に対応しますが，特にアンサンブルカルマンフィルタでは使用している乱数の違いにより同一の結果にはなりませんのでご注意ください．ここではFortran標準の`random_number`を用いて一様乱数を生成していますが，書籍ではメルセンヌ・ツイスタによる一様乱数を使用しています．

# Linux環境での実行方法

環境が構築済みの場合には以下のようにファイルの入手と実行を行います．[アンサンブルカルマンフィルタ](https://github.com/DAE-Code/NS2D_EnKF)および[4次元変分法](https://github.com/DAE-Code/NS2D_4DVar)のプログラムは事前にダウンロードとコンパイルを済ませてください．以下では`tree -d`コマンドで作業ディレクトリの構造を確認しています（この通りになっていれば`tree`コマンドの実行は必要ありません）．
```
$ git clone https://github.com/DAE-Code/NS2D_DataAssimilation
$ tree -d
.
├── NS2D_4DVar
│   └── src
├── NS2D_DataAssimilation
│   ├── 4DV_Periodic
│   │   ├── case_WindowT1.0
│   │   ├── case_WindowT5.0
│   │   └── case_baseline
│   ├── 4DV_Transient
│   │   ├── case_WindowT1.0
│   │   ├── case_WindowT5.0
│   │   └── case_baseline
│   ├── EnKF_Periodic
│   │   ├── case_EnsSize20
│   │   ├── case_EnsSize80
│   │   └── case_baseline
│   └── EnKF_Transient
│       ├── case_VtxEns20
│       ├── case_VtxEns50
│       └── case_baseline
└── NS2D_EnKF
    └── src
$ cd NS2D_DataAssimilation
$ ./runALL.sh
```
`./runALL.sh`によりデータ同化計算の実行および計算結果のグラフ化が自動で行われ，`./figures`ディレクトリに集められます．Pythonを使ったグラフ作成に関しては実行環境に依存する部分が多いので途中で止まってしまった場合には実行環境を確認してください．全て実行すると1.5GB程度のディスク容量を消費します．計算自体にも時間がかかりますのでご注意ください．

# 環境構築

プログラムのコンパイルにはFortranコンパイラおよびmakeを使用します．Redhat系Linux（CentOSなど）の場合には，`sudo yum install gfortran`，Debian系の場合（Ubuntuなど）には`sudo apt install gfortran`のようにしてFortranコンパイラgfortranをインストールすることができます．makeが入っていない場合にも同様にインストールしてください．

計算結果のグラフ化にはPythonを用います．Python 3.xがインストールされていない場合には以下でインストールします（Ubuntuの場合）．
```
$ sudo apt install python3 python3-pip -y
```

結果の可視化に使用するライブラリもインストールしておきます．
```
$ sudo pip3 install numpy
$ sudo pip3 install scipy
$ sudo pip3 install matplotlib
```

例えば，ほぼ素のUbuntu 20.04.1 LTSで本プログラムを実行するまでの道のりは[こちら](https://github.com/DAE-Code/NS2D_DataAssimilation/Environment.md)のようになります．足りないものがあれば指示に従いその都度インストールする形です．
