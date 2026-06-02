%% CREDIT CARD FRAUD DETECTION
clc;
clear;
close all;

%% 1. VERİYİ YÜKLE

data = readtable('creditcard.csv');

disp('Veri başarıyla yüklendi.');
disp(size(data));

%% 2. GİRİŞ VE ÇIKIŞLARI AYIR

X = data(:,1:end-1);
Y = data.Class;

Y = categorical(Y);

%% 3. TRAIN / TEST AYIR

cv = cvpartition(Y,'HoldOut',0.2);

idxTrain = training(cv);
idxTest  = test(cv);

XTrain = X(idxTrain,:);
YTrain = Y(idxTrain);

XTest = X(idxTest,:);
YTest = Y(idxTest);

%% 4. RANDOM FOREST MODELİ

numTrees = 100;

model = fitcensemble( ...
    XTrain,...
    YTrain,...
    'Method','Bag',...
    'NumLearningCycles',numTrees);

disp('Model eğitildi.');

%% 5. TAHMİN

YPred = predict(model,XTest);

%% 6. CONFUSION MATRIX

figure;
confusionchart(YTest,YPred);
title('Confusion Matrix');

%% 7. ACCURACY

accuracy = mean(YPred == YTest);

fprintf('\nAccuracy = %.4f\n',accuracy);

%% 8. PRECISION RECALL F1

cm = confusionmat(YTest,YPred);

TN = cm(1,1);
FP = cm(1,2);
FN = cm(2,1);
TP = cm(2,2);

precision = TP/(TP+FP);
recall    = TP/(TP+FN);
f1        = 2*(precision*recall)/(precision+recall);

fprintf('Precision = %.4f\n',precision);
fprintf('Recall    = %.4f\n',recall);
fprintf('F1 Score  = %.4f\n',f1);

%% 9. ROC EĞRİSİ

[~,scores] = predict(model,XTest);

[Xroc,Yroc,~,AUC] = perfcurve(YTest,...
                              scores(:,2),...
                              categorical(1));

figure;
plot(Xroc,Yroc,'LineWidth',2);
grid on;

xlabel('False Positive Rate');
ylabel('True Positive Rate');
title(['ROC Curve (AUC = ',num2str(AUC),')']);

%% 10. ÖNEMLİ BİLGİLER

fprintf('\nToplam Test Verisi : %d\n',length(YTest));
fprintf('Normal İşlem       : %d\n',sum(YTest=='0'));
fprintf('Dolandırıcılık     : %d\n',sum(YTest=='1'));