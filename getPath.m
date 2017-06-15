function pathOutput = getPath(query)
% getPath - returns the value of the variable specificed as string in argument
%
% Usage: pathOutput = getPath(pathQueryString)

%% System-specific customization
pathFile = fullfile('~','Documents','MATLAB','paths.txt');

fid = fopen(pathFile, 'r');

vars = textscan(fid, '%s = %q');
fclose(fid);

qLogicalInd = ~cellfun(@isempty,strfind(vars{1}, query));
if any(qLogicalInd)
  pathOutput = vars{2}{qLogicalInd};
else
  pathOutput = '';
end

end
