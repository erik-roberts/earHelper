function regexprep_file(inputFile, outputFile, searchRE, replaceString, varargin)
%% regexprep_file
% Run regexprep on each line of a text file
%
% Usage: regexprep_file(inputFile, outputFile, searchRE, replaceString)
%        regexprep_file(inputFile, outputFile, searchRE, replaceString, vararginForRegexprep)
%
% Inputs:
%   InputFile - string
%   OutputFile - string
%   SearchString - string
%   ReplaceString - string
%
% Modified from: https://www.mathworks.com/matlabcentral/answers/62986-how-to-change-a-specific-line-in-a-text-file

assert(nargin && ~isempty(inputFile) && ~isempty(outputFile))

% read whole model file data into cell array
fid = fopen(inputFile);
data = textscan(fid, '%s', 'Delimiter', '\n', 'CollectOutput', true);
fclose(fid);

data = data{1};

% replace in each line
for iLine = 1:length(data)
  data{iLine} = regexprep(data{iLine}, searchRE, replaceString, varargin{:});
end

% write the modified cell array into the text file
fid = fopen(outputFile, 'w');
for iLine = 1:length(data)
  fprintf(fid, '%s\n', char(data{iLine}));
end

fclose(fid);