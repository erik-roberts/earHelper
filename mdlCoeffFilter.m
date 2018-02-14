function tableOut = mdlCoeffFilter(mdl, coefName)
%% mdlCoeffFilter
% Author: Erik Roberts
%
% Purpose: filter coefficient names for given coefName
%
% Inputs:
%   mdl: the model
%   coefName: string name of coefficient to select for
%
% Output: table
  tableOut = mdl.Coefficients(contains(mdl.CoefficientNames, coefName),:);
end