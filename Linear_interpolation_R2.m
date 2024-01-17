function output = Linear_interpolation_R2(X_mat, Y_mat, Values, at_x,at_y)
% People say code should be done through writing good variable names, but
% good luck doing that with PURE linear algebra. Gonna need to document
% this shit for once.

X_mat = reshape(X_mat, 1, numel(X_mat)); 
Y_mat = reshape(Y_mat, 1, numel(Y_mat)); 
Values = reshape(Values, 1, numel(Values));



% This stuff is basicly to check if the points are on a straight line, or
% if they are spaced out and numerous in such a way as to span a plane
% directly. If not, a vector is added that has the same "height", ie value,
% as one of the points/vectors but is offset in the vectors normal
% direction.
dim_mat = [X_mat;Y_mat] - [X_mat(1);Y_mat(1)];
[~, pivoits] = rref(dim_mat);

%numel(pivoits)

if numel(pivoits) < 2 % ie if dim_mat has full rank
    delta_x = X_mat(1) - X_mat(pivoits(1)); delta_y = Y_mat(1) - Y_mat(pivoits(1)); 
    [x_add, y_add] = normal_R2(delta_x, delta_y);
    
    x_add = X_mat(1) + x_add; y_add = Y_mat(1) + y_add;
    val_add = Values(1);

    X_mat = [X_mat, x_add];
    Y_mat = [Y_mat, y_add];
    Values = [Values, val_add];
end



% This is basicly a least-square adaptation of a plane to fit the points,
% the parameters gotten out of the vector are then used to define the plane
% either as a function, or apply it directly on the at_x, at_y inputs.
mat = [X_mat;Y_mat;Values]*([X_mat;Y_mat;Values;ones(size(X_mat))]');

Parameters_vec = null(mat);

if exist('at_x', 'var') == false
output = @(x,y) -(Parameters_vec(1,1)*x + Parameters_vec(2,1)*y + Parameters_vec(4,1))/Parameters_vec(3,1);
else
output = -(Parameters_vec(1,1)*at_x + Parameters_vec(2,1)*at_y + Parameters_vec(4,1))/Parameters_vec(3,1);
end


end