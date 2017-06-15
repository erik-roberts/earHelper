% Lists matlab chars
fprintf('1: ')
% 6e4 is max
% 11160 is max before asian chars
for k=1:11160
  fprintf(' %s',char(k))
  if mod(k,40) == 0
    fprintf('\n')
    fprintf('%i:',k)
  end
end
fprintf('\n\n')
