function x = removeNanCols(x)

x = x(:, ~any(isnan(x), 1));

end