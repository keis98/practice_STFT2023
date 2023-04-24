clear; clc; close all;

% 信号の生成(STEP1)
f = 440;
fs = 44100;
time = 10;
T = 0:1/fs:time-1/fs;
sigVec = sin(2*pi*f*T);
sigLen = % sigVecの長さを代入してください
shiftLen = 1024;
winLen = 2048;
frameLen = ceil((sigLen-winLen)/shiftLen + 1);
windowFn = % 長さwinLenのハン窓(ハミングウィンドウ)を生成してください

% 適切なサイズの0行列を用意
Spec = zeros(floor(winLen/2)+1, frameLen); 

% forループを用いてrealDFT()をL回実行，各実行結果をSpecの各列に代入
for i = 1:frameLen
    % sigVec()のインデックスに適切な値を代入してください
    Spec(:, i) = realDFT(winLen, sigVec(), windowFn);
end