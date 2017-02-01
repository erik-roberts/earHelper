%% replacefield
% This function replaces an existing field of a structure with a new value
% It checks whether the field exists before storing the value

function structure = replacefield(structure, fieldName, value)
if isfield(structure, fieldName)
    structure.(fieldName) = value;
else
    error('fieldset:name', 'Use a valid existing fieldname.')
end