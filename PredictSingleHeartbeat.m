function PredictSingleHeartbeat(model, XTest, YTest)

sample = input('Enter heartbeat number (1-21892): ');

if sample < 1 || sample > size(XTest,1)
    disp('Invalid sample number.');
    return;
end

prediction = predict(model, XTest(sample,:));

fprintf('\nPredicted Class : %d\n', prediction);
fprintf('Actual Class    : %d\n', YTest(sample));

if prediction == YTest(sample)
    disp('✓ Correct Prediction');
else
    disp('✗ Incorrect Prediction');
end

figure;
plot(XTest(sample,:), 'LineWidth',2);
grid on;
xlabel('Sample Number');
ylabel('Amplitude');
title(['Heartbeat Sample ', num2str(sample)]);

if ~exist('Results','dir')
    mkdir('Results');
end

saveas(gcf, fullfile('Results','SingleHeartbeatPrediction.png'));

end
