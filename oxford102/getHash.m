% get hash feature of each picture
clear
clc

testImgDir = '/home/dl/毕业设计/实验/cnnh/oxford102/dataset/train.txt';
fp = fopen(testImgDir, 'r');
testNum = 1020;
codeLen = 128;
testh = zeros(testNum, codeLen);
for i = 1:testNum
    lines = fgetl(fp);
    imgDir = lines(1:71);
    scores = feature_oxford_hash(imgDir, 1, codeLen);
    testh(i, :) = scores';
end

trainImgDir = '/home/dl/毕业设计/实验/cnnh/oxford102/dataset/test.txt';
fp = fopen(trainImgDir, 'r');
trainNum = 6149;
%codeLen = 24;
trainh = zeros(trainNum, codeLen);
for i = 1:trainNum
    lines = fgetl(fp);
    imgDir = lines(1:71);
    scores = feature_oxford_hash(imgDir, 1, codeLen);
    trainh(i, :) = scores';
end

save hash128.mat testh trainh
%% get the label

% testImgDir = '/home/dl/毕业设计/实验/cnnh/oxford102/dataset/train.txt';
% fp = fopen(testImgDir, 'r');
% testNum = 1020;
% test_label = zeros(1, testNum);
% for i = 1:testNum
%     lines = fgetl(fp);
%     test_label(1, i) = str2num(lines(73:end));
% end
% 
% trainImgDir = '/home/dl/毕业设计/实验/cnnh/oxford102/dataset/test.txt';
% fp = fopen(trainImgDir, 'r');
% trainNum = 6149;
% train_label = zeros(1, trainNum);
% for i = 1:trainNum
%     lines = fgetl(fp);
%     train_label(1, i) = str2num(lines(73:end));
% end
% 
% save('label.mat', 'test_label', 'train_label');