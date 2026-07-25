% Display Confusion Matrix
figure('Name','Confusion Matrix');
confusionchart(YTest, YPred);

title('ECG Heartbeat Classification');



if ~exist('Results','dir')
    mkdir('Results');
end

saveas(gcf, fullfile('Results','ConfusionMatrix.png'));

end
