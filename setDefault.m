function x = setDefault(varStr, value)
%% setDefault
% Author: Erik Roberts
%
% Purpose: sets default value for variable if doesn't exist. sets to value if empty.
%
% Usage: variable = setDefault(varStr, value)
%
% Inputs (required):
%   varStr: string name of variable to set default value
%   value: default value for variable
%
% Note: works for anything callable, such as fields of structure
%   Example: s.a = setDefault('s.a', 1)

try
  x = evalin('caller',varStr);
catch
  x = value;
end
if isempty(x)
  x = value;
end

end