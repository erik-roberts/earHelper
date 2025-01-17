function [theAxis, vertInd, horzInd] = vsubplot(varargin)
%% vsubplot
% Author: Erik Roberts
%
% Purpose: Subplot with index increasing vertically instead of horizontally. You can pass 
%   the normal subplot varargin.
%
% Usage: [theAxis, vertInd, horzInd] = vsubplot(varargin)
%
% Output:
%   theAxis: axis output from subplot
%   vertInd: vertical index
%   horzInd: horizontal index

rows = varargin{1};
cols = varargin{2};
pos = varargin{3};

horzInd = rem(pos,  cols);
if horzInd ==0
  horzInd = cols;
end

vertInd = floor((pos-1)/cols)+1;

newPos = (horzInd-1)*rows+vertInd;

varargin{3} = newPos;

theAxis = subplot(varargin{:});

end