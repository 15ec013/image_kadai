# 課題１０　レポート

課題1同様の画像を使用する.

ORG=imread('Cat.jpg'); % 原画像の入力   
ORG = rgb2gray(ORG);  
imagesc(ORG); colormap(gray); colorbar; % 画像の表示 

により，グレースケールで原画像を読み込む.   
原画像を図１に示す．

![原画像](https://github.com/15ec013/image_kadai/blob/master/img/10-0.PNG)
図１　原画像

プレウィット法を使用して，エッジ抽出する．

IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）   
imagesc(IMG); colormap('gray'); colorbar;% 画像表示

抽出後の画像を図２に示す．

![プレウィット法](https://github.com/15ec013/image_kadai/blob/master/img/10-pre.PNG)
図２　プレウィット法

ソベル法を使用して，エッジ抽出する．

IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）    
imagesc(IMG); colormap('gray'); colorbar;% 画像表示

抽出後の画像を図３に示す．

![ソベル法](https://github.com/15ec013/image_kadai/blob/master/img/10-sobel.PNG)
図３　ソベル法

キャニー法を使用して，エッジ抽出する．

IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）   
imagesc(IMG); colormap('gray'); colorbar;% 画像表示

抽出後の画像を図４に示す．

![キャニー法](https://github.com/15ec013/image_kadai/blob/master/img/10-canny.PNG)
図４　キャニー法
