function rmPathVar(query)
% rmPathVar - remove path associated with var in query

pathOutput = getPath(query);
rmpath(genpath(pathOutput));

end