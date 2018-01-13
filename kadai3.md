# 課題3　レポート

課題1同様の画像を使用する.

ORG=imread('Cat.jpg'); % 原画像の入力 
ORG = rgb2gray(ORG);  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示 

により，グレースケールで原画像を読み込む.   
原画像を図１に示す．

![原画像](https://github.com/15ec013/image_kadai/blob/master/img/3-0.PNG)
図１　原画像

輝度値64以上の画素を1，その他を0に変換する．

IMG = ORG > 64;   
imagesc(IMG); colormap(gray); colorbar;   

図２に示す．
![原画像](https://github.com/15ec013/image_kadai/blob/master/img/3-64.PNG)
図２


輝度値96以上の画素を1，その他を0に変換する．

IMG = ORG > 96;   
imagesc(IMG); colormap(gray); colorbar;   

図３に示す．
![原画像](https://github.com/15ec013/image_kadai/blob/master/img/3-96.PNG)
図３

同様に，輝度値128,192で変換する．   
図４，図５に示す．

![原画像](https://github.com/15ec013/image_kadai/blob/master/img/3-128.PNG)
図４

![原画像](https://github.com/15ec013/image_kadai/blob/master/img/3-192.PNG)
図５
