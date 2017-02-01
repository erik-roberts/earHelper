function x = normMag(x)
%normailze to [0,1]
x = x - min(x);
x = x / max(x);

end