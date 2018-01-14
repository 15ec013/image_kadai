# 課題９　レポート

ORG=imread('Cat.jpg'); % 原画像の入力   
ORG = rgb2gray(ORG);  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示 

により，グレースケールで原画像を読み込む.   
原画像を図１に示す．

![原画像](https://github.com/15ec013/image_kadai/blob/master/img/9-0.PNG)
図１　原画像


メディアンフィルターを適用し，ノイズ除去する．   
まずは，ノイズを添付する．

ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付    
imagesc(ORG); colormap(gray); colorbar; % 画像の表示

ノイズが添付された画像を図２に示す．
![ノイズ画像](https://github.com/15ec013/image_kadai/blob/master/img/9-s_p.PNG)
図２　ノイズ画像

平滑化フィルタで雑音除去する．

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去    
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

その時の画像を図３に示す．

![除去画像１](https://github.com/15ec013/image_kadai/blob/master/img/9-ave.PNG)
図３　雑音除去画像１

メディアンフィルタで雑音除去する．

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去   
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

その時の画像を図４に示す．

![除去画像２](https://github.com/15ec013/image_kadai/blob/master/img/9-med.PNG)
図４　雑音除去画像２

フィルタを設計し，適用する．

f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計    
IMG = filter2(f,IMG,'same'); % フィルタの適用    
imagesc(IMG); colormap(gray); colorbar; % 画像の表示

その時の画像を図５に示す．

![除去画像３](https://github.com/15ec013/image_kadai/blob/master/img/9-f.PNG)
図５　フィルタ適用画像
