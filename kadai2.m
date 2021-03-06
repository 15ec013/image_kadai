% 課題２　階調数と疑似輪郭
% ２階調，４階調，８階調の画像を生成せよ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア

ORG=imread('Cat.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % 画像の表示
pause; % 一時停止

% ２階調画像の生成
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ４階調画像の生成
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ８階調画像の生成
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>96;
IMG3 = ORG>128;
IMG4 = ORG>160;
IMG5 = ORG>192;
IMG6 = ORG>224;
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% １６階調画像の生成
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