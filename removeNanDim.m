function x = removeNanDim(x, dim)
%% removeNanDim
% Author: Erik Roberts
%
% Purpose: removes Nans from data x by along dim
%
% Usage: x = removeNanDim(x, dim)
%
% Inputs (required):
%   x: matrix
%   dim: dim of indices to trim

Index(1:ndims(x)) = {':'};
Index{dim} = ~any(isnan(x), dim);
x = x(Index{:});

end