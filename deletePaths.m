function deletePaths(pathInput, rmNonEmptyDirBool)
%% deletePaths
% Author: Erik Roberts
%
% Purpose: deletes a path or cell array of paths to files and/or folders
%
% Usage: deletePaths(pathCell)
%        deletePaths(pathInput, forceBool)
%
% Inputs:
%   pathInput: path(s)
%   rmNonEmptyDirBool: whether to delete non-empty dirs

if nargin < 2
  rmNonEmptyDirBool = false;
end

if iscell(pathInput)
  cellfun(@delIfExist, pathInput);
else
  delIfExist(pathInput)
end

  function delIfExist(thisPath)
    if exist(thisPath, 'dir')
      if rmNonEmptyDirBool
        rmdir(thisPath, 's')
      else
        rmdir(thisPath)
      end
    elseif exist(thisPath, 'file')
      delete(thisPath)
    else
      fprintf('Path Not Found for Deletion: %s\n', thisPath)
    end
  end

end