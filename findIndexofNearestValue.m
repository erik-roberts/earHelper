function ind = findIndexofNearestValue(values, vector)
%% findIndexofNearestValue
%
% Author: Erik Roberts
%
% Purpose: finds index of closest value to those in values in vector
%
% Usage: findIndexofNearestValue(values, vector)

if length(values)==1
  [~, ind] = min(abs(vector - value));
else
  a = values(:)';
  b = vector(:)';

  m = size(a,2); n = size(b,2);
  [~,p] = sort([a,b]);
  q = 1:m+n; q(p) = q;
  t = cumsum(p>m);
  r = 1:n; r(t(q(m+1:m+n))) = r;
  s = t(q(1:m));
  id = r(max(s,1));
  iu = r(min(s+1,n));
  [~,it] = min([abs(a-b(id));abs(b(iu)-a)]);
  ib = id+(it-1).*(iu-id);

  ind = ib;
end

end