function len = findLongestRun(x)
% tells length of longest run in vector

assert(isvector(x),'input must be a vector')

[~, runLengths] = findRuns(x);
len = max(runLengths);
end
