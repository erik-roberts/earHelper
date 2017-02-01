function B = removeNanRows(A)
    B = A(~any(isnan(A),2),:);
end