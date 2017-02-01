function array2 = vert_cat_from_3(array)
    array2 = [];
    for ind = size(array,3)
        array2 = [array2; array(:,:,ind)];
    end
end