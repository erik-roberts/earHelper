function handles = fixGraphicsHandleArray(handles)
%% fixGraphicsHandleArray
% Purpose: if handles are numeric array, will convert to graphics object if
%          needed (i.e., if matlab version >= 2014b)
%
% Usage:
%   handles = fixGraphicsHandleArray(handles)
%
% Input:
%   handle(s)
%
% Author: Erik Roberts

if isnumeric(handles) && isgraphics(handles) && strcmp(reportUI,'matlab')
  v = version('-release'); % check ml version
  
  % proceed if at least matlab 2014b
  if (str2double(v(end-2:end-1)) >= 14) || strcmp(v(end-2:end), '14b')
    gr = get(groot); % get graphics root object
    handles = gr.Children(handles); % convert numeric handles to graphics array
  end
end

end