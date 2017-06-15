function output = rmExt(varargin)
%% rmExt - remove file extension

% convert to cell of strings
if nargin == 1 && iscell(varargin{1})
  output = varargin{1};
else
  output = varargin;
end

% remove ext
for k = 1:numel(output)
  [this_pathstr, this_name] = fileparts2(output{k});
  output{k} = fullfile(this_pathstr, this_name);
end


end