# 課題７　レポート
課題1同様の画像を使用する.

ORG=imread('Cat.jpg'); % 原画像の入力   
ORG = rgb2gray(ORG);  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示 

により，グレースケールで原画像を読み込む.   
原画像を図１に示す．

![原画像](https://github.com/15ec013/image_kadai/blob/master/img/7-0.PNG)
図１　原画像

原画像のヒストグラムを表示する．    

imhist(ORG); % 濃度ヒストグラムを生成、表示   

ヒストグラムを図２に示す．

![ヒスト１](https://github.com/15ec013/image_kadai/blob/master/img/7-0-Hist.PNG)
図２　原画像のヒストグラム


画素のダイナミックレンジを０から２５５にする．

ORG = double(ORG);    
mn = min(ORG(:)); % 濃度値の最小値を算出    
mx = max(ORG(:)); % 濃度値の最大値を算出    
ORG = (ORG-mn)/(mx-mn)*255;   
imagesc(ORG); colormap(gray); colorbar; % 画像の表示   

その結果の画像を図３に示す．    
![画像](https://github.com/15ec013/image_kadai/blob/master/img/7-1.PNG)
図３　結果画像


そのヒストグラムを表示する．

ORG = uint8(ORG); % この行について考察せよ   
imhist(ORG); % 濃度ヒストグラムを生成、表示   

ヒストグラムを図４に示す．

![ヒスト２](https://github.com/15ec013/image_kadai/blob/master/img/7-1-Hist.PNG)
図４　ヒストグラム
