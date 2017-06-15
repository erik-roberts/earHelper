function addPathVar(query)
% addPathVar - add path associated with var in query

pathOutput = getPath(query);
addpath(genpath(pathOutput));

end