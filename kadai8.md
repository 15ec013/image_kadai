# 課題８　レポート

課題1同様の画像を使用する.

ORG=imread('Cat.jpg'); % 原画像の入力   
ORG = rgb2gray(ORG);  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示 

により，グレースケールで原画像を読み込む.   
原画像を図１に示す．

![原画像](https://github.com/15ec013/image_kadai/blob/master/img/8-0.PNG)
図１　原画像

閾値128で二値化する．

IMG = ORG > 128; % 閾値128で二値化    
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

二値化した画像を図２に示す．    
![二値化画像](https://github.com/15ec013/image_kadai/blob/master/img/8-128.PNG)
図２　二値化した画像

二値化された画像の連結成分にラベルをつける．

IMG = bwlabeln(IMG);    
imagesc(IMG); colormap(jet); colorbar; % 画像の表示

その画像を図３に示す．
![二値化画像２](https://github.com/15ec013/image_kadai/blob/master/img/8-bwlabeln.PNG)
図３　ラベルをつけた画像
