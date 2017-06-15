function overLoadClassMethod(varargin)

% get methods
classMethods = {};
for cellStr = varargin
  classMethods = [classMethods; methods(cellStr{1})];
end
classMethods = unique(classMethods);

fid = fopen('overloadedMethodsOutput.m', 'w');

% write methods to file
for cellStr = classMethods(:)'
  str = cellStr{1};
  fprintf(fid, 'function out = %s(obj, varargin)\n', str);
  fprintf(fid, '  out = %s(obj.data, varargin{:});\n', str);
  fprintf(fid, 'end\n\n');
end

fclose(fid);

fprintf('Done!\n')

end