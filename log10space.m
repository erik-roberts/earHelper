function y = log10space(x1, x2, varargin)
%% log10space Logarithmically spaced vector with inputs as limits, not exponents
%   LOGSPACE(X1, X2) generates a row vector of 50 logarithmically
%   equally spaced points between X1 and X2.
%
%   LOGSPACE(X1, X2, N) generates N points.

y = logspace(log10(x1), log10(x2), varargin{:});

end