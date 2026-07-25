function model = TrainClassifier(XTrain, YTrain)

disp('Training KNN classifier...');

% Train a KNN model with 5 neighbors
model = fitcknn(XTrain, YTrain, ...
    'NumNeighbors', 5, ...
    'Standardize', 1);

disp('Training completed!');

end
