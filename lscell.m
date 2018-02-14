function dirList = lscell(arg, removePathBool, relativePathBool)
%% lscell
% Author: Erik Roberts
%
% Purpose: returns cell matrix of strings with results from call to dir
%
% Usage: dirList = lscell()
%        dirList = lscell(arg)
%        dirList = lscell(arg, removePathBool)
%        dirList = lscell(arg, removePathBool, relativePathBool)
%
% Inputs (optional):
%   arg: argument to dir
%   removePathBool: logical whether to remove the path before the files/dirs (default=true)
%   relativePathBool: logical whether to convert absolute paths to relative paths (default=false)
%
% Tips: in order to search subdirectories, use the '**' glob character in the arg
%
% See also: DIR

% parse args
if ~nargin || isempty(arg)
  arg = '.';
end
if nargin < 2 || isempty(removePathBool)
  removePathBool = true; %defaults to true
end
if nargin < 3 || isempty(relativePathBool)
  relativePathBool = false; %defaults to false
end

% get dir contents
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

if removePathBool
  dirList = cellfun(@removePath, dirList, 'Uni',0);
end
  
  % sub functions
  function thisFilename = removePath(thisPath)
    [~,name,ext] = fileparts(thisPath);
    thisFilename = [name,ext];
  end
end
