function [startInds, runLengths] = findNonZeroRuns(x)
% finds all nonzero runs and gives starting index and length of each

assert(isvector(x),'input must be a vector')

y = (x(:))'; %make binary row
changeIndicator = [diff(y), 1];
if ~isnan(y(1)) && y(1) %first value is 1
  changeIndicator = [1, changeIndicator];
else %first value is 0
  changeIndicator = [0, changeIndicator];
end
indChange = find(changeIndicator);
runLengths = diff(indChange);
changeIndicator(end) = []; %remove artifactual end ind
nonZeros = changeIndicator(changeIndicator~=0);
startInds = find(changeIndicator == 1);
runLengths = runLengths(nonZeros==1);

end