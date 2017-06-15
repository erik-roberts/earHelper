function len = findLongestNonZeroRun(x)
% tells length of longest non-zero run in vector

assert(isvector(x),'input must be a vector')

[~, runLengths] = findNonZeroRuns(x);
len = max(runLengths);
end