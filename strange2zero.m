function mat = strange2zero(mat)
mat(imag(mat)~=0) = 0;
mat(isnan(mat)) = 0;
mat(isinf(mat)) = 0;
end