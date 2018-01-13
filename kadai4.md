# 課題４　レポート
課題1同様の画像を使用する.

ORG=imread('Cat.jpg'); % 原画像の入力   
ORG = rgb2gray(ORG); colormap(gray); colorbar;    
imagesc(ORG); axis image; % 画像の表示   

により，グレースケールで原画像を読み込む.   
原画像を図１に示す．

![原画像](https://github.com/15ec013/image_kadai/blob/master/img/4-0.PNG)
図１　原画像


imhist(ORG); % ヒストグラムの表示

によって，画像のヒストグラムを表示する．    
図２に示す．

![ヒスト](https://github.com/15ec013/image_kadai/blob/master/img/4-Hist.PNG)
図１　ヒストグラム

縦軸が画素数で横軸が輝度値である．輝度値50周辺が飛びぬけて多く，輝度値250周辺は極端に少ない．   
原画像からは，黒と白の割合が同じくらいに見えるが，ヒストグラム上では黒の割合が多いということが分かる．
