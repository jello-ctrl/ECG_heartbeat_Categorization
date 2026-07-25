function PlotClassDistribution(YTrain)

classes = unique(YTrain);
counts = zeros(length(classes),1);

for i = 1:length(classes)
    counts(i) = sum(YTrain==classes(i));
end

figure('Name','Training Dataset Distribution');

bar(classes,counts)

xlabel('Heartbeat Class')
ylabel('Number of Samples')
title('Training Dataset Distribution')

grid on



if ~exist('Results','dir')
    mkdir('Results');
end

saveas(gcf, fullfile('Results','ClassDistribution.png'));

end
