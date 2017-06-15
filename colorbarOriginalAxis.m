function colorbarOriginalAxis(handle)
%%colorbarOriginalAxis
%
% Author: Erik Roberts
%
% Purpose: makes colorbar that doesn't scale figure
%
% Usage: colorbarOriginalAxis()
%        colorbarOriginalAxis(handle)
%
% Input (Optional)
%   handle: handle to axis (default: gca)

if ~exist('handle','var')
  handle = gca;
end

originalSize = get(handle, 'Position');
colorbar;
set(handle, 'Position', originalSize);

end
