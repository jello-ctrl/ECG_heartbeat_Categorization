function EvaluateModel(YTest,YPred)

accuracy = sum(YTest==YPred)/length(YTest);

cm = confusionmat(YTest,YPred);

precision = diag(cm)./sum(cm,1)';
recall = diag(cm)./sum(cm,2);

F1 = 2*(precision.*recall)./(precision+recall);

fprintf('\nOverall Accuracy : %.2f%%\n',accuracy*100);

disp(table((0:4)',precision,recall,F1,...
    'VariableNames',{'Class','Precision','Recall','F1Score'}))

end
