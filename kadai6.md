# 課題６　レポート
課題1同様の画像を使用する.

ORG=imread('Cat.jpg'); % 原画像の入力   
ORG = rgb2gray(ORG);  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示 

により，グレースケールで原画像を読み込む.   
原画像を図１に示す．

![原画像](https://github.com/15ec013/image_kadai/blob/master/img/6-0.PNG)
図１　原画像

輝度値128で二値化する．   


IMG = ORG>128; % 128による二値化    
imagesc(IMG); colormap(gray); colorbar; % 画像の表示   

結果を図２に示す．
![二値化画像](https://github.com/15ec013/image_kadai/blob/master/img/6-128.PNG)
図２　輝度値128での二値化


ディザ法で二値化する．


IMG = dither(ORG); % ディザ法による二値化   
imagesc(IMG); colormap(gray); colorbar; % 画像の表示   


結果を図３に示す．
![ディザ画像](https://github.com/15ec013/image_kadai/blob/master/img/6-Dither.PNG)
図３　ディザ法での二値化
