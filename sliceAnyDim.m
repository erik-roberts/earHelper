function x = sliceAnyDim(x, ind, dim)
%% sliceAnyDim
% Author: Erik Roberts
%
% Purpose: gets indicies from any dim without causing concatenation/reshaping
%
% Usage: x = sliceAnyDim(x, ind, dim)
%
% Inputs (required):
%   x: matrix
%   ind: 
%   dim: dim of indices to trim

Index(1:ndims(x)) = {':'};
Index{dim} = ind;
x = x(Index{:});

end