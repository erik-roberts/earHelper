function sccBool = isScc()
%% isScc
% Returns true if machine is SCC cluster
%   checks hostname for string: "scc"

warning('off', 'MATLAB:lang:cannotClearExecutingFunction')

[~, hostName] = system('hostname');
if regexpi(hostName,'scc')
  sccBool = true;
else
  sccBool = false;
end

end