function copyAxis2Figure(ax, targetFig)
%% copyAxis2Figure
% copy a given axis to a new figure or specified figure
%
% Usage: copyAxis2Figure() % sourceAxis is gca
%        copyAxis2Figure(sourceAxis)
%        copyAxis2Figure(sourceAxis, targetFig)

if nargin < 1 || isempty(ax)
  ax = gca;
end
if nargin < 2 || isempty(targetFig)
  targetFig = figure();
end
  
newAx = copyobj(ax,targetFig);
% newAx.Position = [.15 .15 .7 .7];
newAx.Position = [0.1300 0.1100 0.7750 0.8150]; % default