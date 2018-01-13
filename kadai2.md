# 課題2 レポート

課題1同様の画像を使用する.

ORG=imread('Cat.jpg'); % 原画像の入力   
ORG = rgb2gray(ORG); colormap(gray); colorbar;    
imagesc(ORG); axis image; % 画像の表示   

により，グレースケールで原画像を読み込む.   
原画像を図１に示す．

![原画像](https://github.com/15ec013/image_kadai/blob/master/img/2-0.PNG)
図１　原画像


２階調画像は0~256の輝度値を２分割すればいいので，128以上の画素を1，その他を0に変換する. 

IMG = ORG>128;  
imagesc(IMG); colormap(gray); colorbar;  axis image;

２階調画像を図２に示す.
![２階調](https://github.com/15ec013/image_kadai/blob/master/img/2-2.PNG)
図２　２階調画像

４階調画像は輝度値を４分割する．64,128,192で変換し，各値すべてを足しあわせる. 

IMG0 = ORG>64;  
IMG1 = ORG>128;   
IMG2 = ORG>192;   
IMG = IMG0 + IMG1 + IMG2;   
imagesc(IMG); colormap(gray); colorbar;  axis image;  

４階調画像を図３に示す.
![４階調](https://github.com/15ec013/image_kadai/blob/master/img/2-4.PNG)
図３　４階調画像

８階調画像は輝度値を８分割する．32,64,96,128,160,192,224で変換し，各値すべてを足しあわせる. 

IMG0 = ORG>32;    
IMG1 = ORG>64;    
IMG2 = ORG>96;    
IMG3 = ORG>128;   
IMG4 = ORG>160;   
IMG5 = ORG>192;   
IMG6 = ORG>224;   
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;   
imagesc(IMG); colormap(gray); colorbar;  axis image;  

８階調画像を図４に示す.
![８階調](https://github.com/15ec013/image_kadai/blob/master/img/2-8.PNG)
図４　８階調画像

１６階調画像は輝度値を１６分割する．16,32,48,64,80,96,112,128,114,160,176,192,208,224,240で変換し，各値すべてを足しあわせる. 

IMG0 = ORG>16;    
IMG1 = ORG>32;    
IMG2 = ORG>48;    
IMG3 = ORG>64;    
IMG4 = ORG>80;    
IMG5 = ORG>96;    
IMG6 = ORG>112;   
IMG7 = ORG>128;   
IMG8 = ORG>144;   
IMG9 = ORG>160;   
IMG10 = ORG>176;    
IMG11 = ORG>192;    
IMG12 = ORG>208;    
IMG13 = ORG>224;    
IMG14 = ORG>240;    
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6 + IMG7 + IMG8 + IMG9 + IMG10 + IMG11 + IMG12 + IMG13 + IMG14;    
imagesc(IMG); colormap(gray); colorbar;  axis image;  

１６階調画像を図５に示す.
![１６階調](https://github.com/15ec013/image_kadai/blob/master/img/2-16.PNG)
図５　１６階調画像

このように，階調数が増えていくごとに原画像との差が減っていく.
