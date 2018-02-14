function dirList = lscell(arg, removePathBool, recursiveBool, relativePathBool)
%% lscell
% Author: Erik Roberts
%
% Purpose: returns cell matrix of strings with results from call to dir
%
% Usage: dirList = lscell()
%        dirList = lscell(arg)
%        dirList = lscell(arg, removePathBool)
%
% Inputs (optional):
%   arg: argument to dir
%   removePathBool: logical whether to remove the path before the files/dirs (default=true)
%   recursiveBool: logical whether to find contents of subdirectories (default=false)
%   relativePathBool: logical whether to convert absolute paths to relative paths (default=false)

% args
if nargin < 2 || isempty(removePathBool)
  removePathBool = true; %defaults to true
end
if nargin < 3 || isempty(recursiveBool)
  recursiveBool = false; %defaults to false
end
if nargin < 4 || isempty(relativePathBool)
  relativePathBool = false; %defaults to false
end
if ~nargin || isempty(arg)
  arg = '.';
end
  
if ~recursiveBool
  try
    dirListS = dir(arg);
    
    % remove first period
    if strcmp(dirListS(1).name, '.')
      dirListS(1) = [];
    end
    
    % remove double period
    if strcmp(dirListS(1).name, '..')
      dirListS(1) = [];
    end
    
    nFiles = length(dirListS);
    
    % convert struct to cellstr
    dirList = cell(nFiles,1);
    for k = 1:nFiles
      dirList{k} = fullfile(dirListS(k).folder, dirListS(k).name);
    end
    
    % dirList is cellstr with absolute paths
    
    if relativePathBool && ~removePathBool
      dirList = regexprep(dirList, ['^' pwd filesep], '');
    end
    
    % dirList is cellstr with absolute paths, or relative paths starting with name
  catch % no arg files found
    dirList = {};
    return
  end
else % recursiveBool
  if (ismac || isunix)
    [~, dirList] = system(['find ' arg]);
    dirList = strsplit(dirList, '[^ \S]', 'DelimiterType', 'RegularExpression');
    dirList = dirList(:); % make col
    
    % remove first period
    if strcmp(dirList{1}, '.')
      dirList(1) = [];
    end
    
    % remove trailing empty
    if isempty(dirList{end})
      dirList(end) = [];
    end
    
    % dirList is cellstr with relative paths starting with './'
    
    % fix paths
    if relativePathBool && ~removePathBool
      % remove relative path starting './'
      dirList = regexprep(dirList, ['^.' filesep], '');
      
    elseif ~relativePathBool && ~removePathBool
      % convert relative paths to abs paths
      dirList = regexprep(dirList, ['^.' filesep], [pwd filesep]);
    end
    
    % dirList is cellstr with absolute paths, or relative paths starting with name
  elseif ispc
    warning('Recursive not implemented for windows.')
  end
end

if removePathBool
  dirList = cellfun(@removePath, dirList, 'Uni',0);
end
  
  % sub functions
  function thisFilename = removePath(thisPath)
    [~,name,ext] = fileparts(thisPath);
    thisFilename = [name,ext];
  end
end
