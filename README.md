# module_get_next_TY
delta_t秒後の温度Tと化学種k質量分率Y(k=1...KK)を計算するためのモジュール  
SENKIN内部のモジュールを改変して作成．  
## 実行環境
- ubuntu
- gfortran
## 使用方法
例としてmain.fを用いて1ステップ分の計算を行う．main.fで呼んでいる箇所を参考に，自身のプログラムから使用してください．
1. dataフォルダにCHEMKINインタープリタで生成されたcklinkを配置
2. ソースコードをmain.fと合わせてコンパイル．get_next_TYという実行ファイルが生成される
```bash
bash script/compile.sh
```
3. 計算を実行
```bash
./get_next_TY
```

## 留意点
- SENKINにおけるケース１：圧力一定の条件で計算
- main内では化学種の質量分立Yをベクトルとして与えている．このベクトルの中での化学種の順番はCHEMKINインタープリタで読み込んだ時のSPECIESの順番と一致していなければならない．data/ckoutを見ると順番が分かる．