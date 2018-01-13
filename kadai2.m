% ‰Û‘è‚Q@ŠK’²”‚Æ‹^Ž——ÖŠs
% ‚QŠK’²C‚SŠK’²C‚WŠK’²‚Ì‰æ‘œ‚ð¶¬‚¹‚æD
% ‰º‹L‚ÍƒTƒ“ƒvƒ‹ƒvƒƒOƒ‰ƒ€‚Å‚ ‚éD
% ‰Û‘èì¬‚É‚ ‚½‚Á‚Ä‚ÍuLennavˆÈŠO‚Ì‰æ‘œ‚ð—p‚¢‚æD

clear; % •Ï”‚ÌƒI[ƒ‹ƒNƒŠƒA

ORG=imread('Cat.jpg'); % Œ´‰æ‘œ‚Ì“ü—Í
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % ‰æ‘œ‚Ì•\Ž¦
pause; % ˆêŽž’âŽ~

% ‚QŠK’²‰æ‘œ‚Ì¶¬
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ‚SŠK’²‰æ‘œ‚Ì¶¬
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ‚WŠK’²‰æ‘œ‚Ì¶¬
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

% ‚P‚UŠK’²‰æ‘œ‚Ì¶¬
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