function output = cellfununi (varargin)
%CELLFUNUNI - Wraps cellfun, with uniform output set to zero
%
% Usage:
%   out = cellfunu (varargin)

output = cellfun(varargin{:},'UniformOutput',0);

end
