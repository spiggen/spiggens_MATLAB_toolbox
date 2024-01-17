function outmat = Inf_NaN2zero(mat)
outmat = zeros(size(mat));
outmat((isinf(mat) == false) ...
     & (isnan(mat) == false)) = mat((isinf(mat) == false) ...
                                  & (isnan(mat) == false));

end