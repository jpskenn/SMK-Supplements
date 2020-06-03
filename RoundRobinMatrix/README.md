# 総当たりマトリクス / Round Robin Matrix


## 総当たりマトリクスとは

IKeJI氏のブログ記事、[キーボードのマトリクス方式の分類](https://blog.ikejima.org/make/keyboard/2019/12/14/keyboard-circuit.html)で *2乗マトリクス* として取り上げられているマトリクス方式のことです。  
全てのピンの間にキーを接続するマトリクスで、N本のピンを使用した場合に、N(N-1)個のキーが使用できます。  
少ないピン数で多数のキーを扱うことができます。

全てのピン同士を接続することから、総当たり戦のような接続をイメージしやすいよう、 *総当たりマトリクス* という呼称にしました。

行と列の接続箇所へダイオードを挿入することで、ATMega32u4での複数キー同時押しによるゴーストの発生を防いでいます。



## 回路設計

あるピンからの信号がスイッチを通って別のピンで検知されるよう、すべてのピンの間にスイッチを配置します。  
行と列の接続箇所には、行から列方向にダイオードを挿入します。

![回路図](./assets/RoundRobinCircuitDiagram.png)

## ゴースト対策についての考察

ATMega32u4が信号をHiとして判定するVIHは、データシートの383ページ、表29.2より、  
Vcc=5Vのとき、  
VIHmin = 0.2Vcc + 0.9V = 1.9V  
です。

自作キーボードでよく使用されているダイオード1N4148の電圧降下は、データシートより、0.6Vから0.9Vです。

これらの仕様に沿って回路設計を行い、ゴーストの発生が懸念される条件でも、ダイオードによる電圧降下によってATMega32u4がHiと判定されるような対策を行います。

ゴーストの発生が懸念される条件の例として、次のような場合を考えます。
上記の回路で、SW12とSW23のスイッチを同時に押した状態で、PIN3においてPIN1の状態を判定する場合。  
この場合、

    PIN1 --> D11 --> SW12 --> D12 --> D22 --> SW23 --> D23 --> PIN3

の経路でPIN1の状態がPIN3でLoと判定されてしまうと、押していないスイッチSW13が押されていると認識され、ゴーストが発生してしまいます。

しかし、この経路では、行と列の2箇所の接続と2個のスイッチで、合計4個のダイオードを通過することになります。  
このとき、ダイオード1個あたりの電圧降下が0.6Vのときには合計2.4V、また0.9Vのときには合計3.6Vの電圧降下が発生します。  
これらの電圧降下によりATMega32u4のVIHmin 1.9Vを超えるため、PIN1はHiと判定され、ゴーストは発生しません。

データシート等のリンク  
[ATmega32U4 - 8-bit AVR Microcontrollers](https://www.microchip.com/wwwproducts/en/ATmega32u4)  
[汎用小信号高速スイッチング・ダイオード　１Ｎ４１４８　１００](http://akizukidenshi.com/catalog/g/gI-00941/)  
[高速スイッチング・ダイオード１Ｎ４１４８Ｗ](http://akizukidenshi.com/catalog/g/gI-07084/)

## ファームウェア整備

### rules.mk
カスタムマトリクスの設定と、総当たりマトリクス方式でのスキャン方法を記述したファイルを読み込む指定を追加します。  
matrix_rr.cファイルをrules.mkと同じフォルダへ配置します。  
matrix_rr.cはquantum/matrix.cを改変して作成します。[ここ](./assets/matrix_rr.c)にサンプルを用意しました。

    CUSTOM_MATRIX = yes
    SRC += matrix_rr.c

なお、Pro Microを2個使用して通信させる分割型でも、総当たりマトリクスを使用できます。
その際は、quantum/split_common/matrix.cを改変して作成します。

### config.h
使用するピンの数と、ピン番号を指定します。  
総当たりマトリクスでは、ROW、COLともに同じピン数、同じピン番号になります。

    #define MATRIX_ROWS 3
    #define MATRIX_COLS 3

    #define MATRIX_ROW_PINS { B3, B2, B6 }
    #define MATRIX_COL_PINS { B3, B2, B6 }

### keyboard.h
マトリクスレイアウトを次のように指定します。  
ここでは、K（COL番号）（ROW番号）のように記述しています。  
例：  
K12　1列目2行目のキー。

    #define LAYOUT( \
        K12, K21, K31, \
        K13, K23, K32  \
    ) \
    { \
        { KC_NO,K21,  K31   }, \
        { K12,  KC_NO,K32   }, \
        { K13,  K23,  KC_NO } \
    }

## 総当たりマトリクスを採用しているキーボード

[Colice](https://github.com/jpskenn/Colice)
[AtreusRR](https://github.com/jpskenn/AtreusRR)
