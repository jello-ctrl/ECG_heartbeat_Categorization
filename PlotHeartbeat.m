function PlotHeartbeat(XTrain, YTrain)

% Plot one heartbeat from each class

classes = unique(YTrain);

figure('Name','ECG Heartbeat Samples');

for i = 1:length(classes)

    idx = find(YTrain == classes(i), 1);

    subplot(length(classes),1,i)

    plot(XTrain(idx,:), 'LineWidth', 1.5);

    grid on;

    title(['Heartbeat Class ', num2str(classes(i))]);

    xlabel('Sample Number');

    ylabel('Amplitude');

end


if ~exist('Results','dir')
    mkdir('Results');
end

saveas(gcf, fullfile('Results','HeartbeatSamples.png'));

end
