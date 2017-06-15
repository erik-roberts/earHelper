function [indicator, startInds, runLengths] = findNonZeroRunsFilterLength(x,len,operatorFxn)

[startInds, runLengths] = findNonZeroRuns(x);

logicalRuns = operatorFxn(runLengths, len);

startInds = startInds(logicalRuns);
runLengths = runLengths(logicalRuns);

indicator = zeros(size(x));
indsOfOnes = [startInds; startInds+runLengths-1];
nRuns = length(runLengths);
for k = 1:nRuns
  indicator(indsOfOnes(1,k):indsOfOnes(2,k)) = 1;
end

indicator = logical(indicator);

end