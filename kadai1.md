# 課題１レポート

使用する画像は1600×1066のディジタルカラー画像である．

ORG=imread('Cat.jpg'); % 原画像の入力  
imagesc(ORG); axis image; % 画像の表示

によって，原画像を読み込む.  
表示した結果を図１に示す．

![原画像](https://github.com/15ec013/image_kadai/blob/master/img/1-0.PNG)  
図1 原画像

原画像を1/2サンプリングするには，画像を1/2倍に縮小した後，2倍に拡大すればよい．なお，拡大する際には，単純補間するために「box」オプションを設定する．

IMG = imresize(ORG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

1/2サンプリングの結果を図２に示す．

![1/2画像](https://github.com/15ec013/image_kadai/blob/master/img/1-2.PNG)  
図2 1/2サンプリング
    
同様に原画像を1/4サンプリングするには，1/2サンプリングした画像を1/2倍に縮小した後，2倍に拡大すればよい．

IMG = imresize(IMG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

1/4サンプリングの結果を図３に示す．

![1/4画像](https://github.com/15ec013/image_kadai/blob/master/img/1-4.PNG)  
図3 1/4サンプリング
    
1/8から1/32サンプリングも同様に，

IMG = imresize(IMG,0.5); % 画像の縮小  
IMG2 = imresize(IMG,2,'box'); % 画像の拡大

を実行することで結果が得られる.

1/8から1/32サンプリングの結果を図４～８に示す．

![1/8画像](https://github.com/15ec013/image_kadai/blob/master/img/1-8.PNG)  
図4 1/8サンプリング

![1/16画像](https://github.com/15ec013/image_kadai/blob/master/img/1-16.PNG)  
図5 1/16サンプリング

![1/32画像](https://github.com/15ec013/image_kadai/blob/master/img/1-32.PNG)  
図6 1/32サンプリング

![1\64画像](https://github.com/15ec013/image_kadai/blob/master/img/1-64.PNG)  
図7 1/64サンプリング

![1/128像](https://github.com/15ec013/image_kadai/blob/master/img/1-128.PNG)  
図8 1/128サンプリング

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する．
これらは，1/2から1/128を順番に処理させることが前提であるため，単体で処理させる場合はimresizeの第2引数の数値を変える必要がある.
