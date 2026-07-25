function [XTrain, YTrain, XTest, YTest] = LoadData()

% Load training data
trainData = readmatrix(fullfile('Dataset','mitbih_train_small.csv'));

% Load testing data
testData = readmatrix(fullfile('Dataset','mitbih_test.csv'));

% Separate features and labels
XTrain = trainData(:,1:end-1);
YTrain = trainData(:,end);

XTest = testData(:,1:end-1);
YTest = testData(:,end);

% Display dataset information
fprintf('Training Samples : %d\n', size(XTrain,1));
fprintf('Testing Samples  : %d\n', size(XTest,1));
fprintf('Features per ECG : %d\n', size(XTrain,2));

end
