function deletePaths(pathInput)
%% deletePaths
% Author: Erik Roberts
%
% Purpose: deletes a path or cell array of paths to files and/or folders
%
% Usage: deletePaths(pathCell)

if iscell(pathInput)
  cellfun(@delIfExist, pathInput);
else
  delIfExist(pathInput)
end

  function delIfExist(path)
    if exist(path, 'dir')
      rmdir(path)
    elseif exist(path, 'file')
      delete(path)
    else
      fprintf('Path Not Found for Deletion: %s\n', path)
    end
  end

end