%% Active-scaling


function mat_out = contrast(matrix, max_value, min_value)
max_in = max(matrix);
min_in = min(matrix);

f = @(x) (x - min_in)*(max_value - min_value)/(max_in - min_in) + min_value;
mat_out = f(matrix);

end