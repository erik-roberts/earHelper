function [startInds, runLengths] = findRuns(x)
% finds all runs and gives starting index and length of each

assert(isvector(x),'input must be a vector')

y = (x(:))'; %make row
changeIndicator = [1, diff(y), 1];
indChange = find(changeIndicator);
runLengths = diff(indChange);
changeIndicator(end) = []; %remove artifactual end ind
startInds = find(changeIndicator ~= 0);

end