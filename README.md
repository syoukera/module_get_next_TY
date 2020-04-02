# module_get_next_TY
delta_t秒後の温度Tと化学種k質量分率Y(k=1...KK)を計算するためのモジュール  
SENKIN内部のモジュールを改変して作成．  
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