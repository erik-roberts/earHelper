function tf = isNegativeIntegerValuedNumeric(values,zeroAllowed)
%isNegativeIntegerValuedNumeric  Private utility function for parallel

%isNegativeIntegerValuedNumeric return if all elements have
%   negative, numeric integer values.

%   Copyright 2006-2010 The MathWorks, Inc.

if nargin < 2
   zeroAllowed = false;
end

% Exit early for non-numeric, complex data since isnumeric and isreal check the 
% whole array in one call, without looping.  
if ~( isnumeric( values ) && isreal( values ) )
    tf = false;
    return;
else
    tf = true;
end

for i = 1 : numel(values)
    value = values(i);
    if ~isfinite(value)
        tf = false;
        return;
    end
    if zeroAllowed
        if value > 0
            tf = false;
            return;
        end
    else
        if value >= 0
            tf = false;
            return;
        end
    end
    if round(value) ~= value
        tf = false;
        return;
    end
end
