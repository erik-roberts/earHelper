function output = copyObject(input, output)
   C = metaclass(input);
   P = C.Properties;
   for k = 1:length(P)
     if ~P{k}.Dependent
       output.(P{k}.Name) = input.(P{k}.Name);
     end
   end
end