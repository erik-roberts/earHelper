function ax = getAxChildren(figHandle)
%% getAxChildren
% Purpose: get figure children of type 'axes'

ax = findobj(figHandle.Children,'type','axes');

end
