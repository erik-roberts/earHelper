function OUT = isnan2(IN)
% isnan2 - same as isnan but returns false if ischar

if ~ischar(IN) && isnan(IN)
  OUT = true;
else
  OUT = false;
end

end