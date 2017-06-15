function fieldOut = getFieldFromStruct(S,fieldsString, matBool)
%% getFieldFromStruct
% Author: Erik Roberts
%
% Purpose: Get data from a field in a nested structure array
%
% Usage: fieldOut = getFieldFromStruct(Structure,fieldsString)
%        fieldOut = getFieldFromStruct(Structure,fieldsString, matBool)
%
% INPUT (Required)
%   Structure: must be structure scalar or vector (ie not matrix)
%   fieldsString: string containing nested fields
%
% INPUT (Optional)
%   matBool: logical of whether to try to convert cell array to mat (default:1)
%
% OUTPUT
%   fieldOut: cell array of contents. returns [] if field not found.
%
% Example
%   >> S.a.b.c.d = 1;
%   >> fieldOut = getFieldFromStructArray(S,'a.b.c.d');
%   fieldOut =
%       {[1]};

nS = length(S);

fieldCells = textscan(fieldsString,'%s','Delimiter','.');
fieldCells = fieldCells{1};

for iS = 1:nS
  fieldOut{iS} = recurvField(S, fieldCells);
end

matBool = setDefault('matBool', 1);
if matBool
  try
    fieldOut = cell2mat(fieldOut);
  end
end

%% recursive sub function
  function fieldOut = recurvField(S, fieldCells)
    if ~isempty(fieldCells)
      try
        S = S.(fieldCells{1});
        fieldCells(1) = [];
        fieldOut = recurvField(S, fieldCells);
      catch
        fieldOut = []; %if not a valid subfield, return empty mat
      end
    else
      fieldOut = S;
    end
  end

end