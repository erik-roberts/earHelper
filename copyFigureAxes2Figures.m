function copyFigureAxes2Figures(sourceFig)
%% copyFigureAxes2Figures
% copy axes from sourceFig to new figures
%
% Usage: copyFigureAxes2Figures() %  gcf is sourceFig
%        copyFigureAxes2Figures(sourceFig)

if nargin < 1 || isempty(sourceFig)
  sourceFig = gcf;
end

axChildren = getAxChildren(sourceFig);

shift = 0;
for ax = axChildren(:)'
  newFig = figure();
  newFig.Position = newFig.Position + [shift -shift 0 0];
  
  newAx = copyobj(ax,newFig);
  % newAx.Position = [.15 .15 .7 .7];
  newAx.Position = [0.1300 0.1100 0.7750 0.8150]; % default
  shift = shift + 10; % shift down-right 10 px each time
end