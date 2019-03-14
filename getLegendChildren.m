function leg = getLegendChildren(figHandle)
%% getLegendChildren
% Purpose: get figure children of type 'legend'

leg = findobj(figHandle.Children,'type','legend');

end
