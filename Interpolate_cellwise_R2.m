function value = Interpolate_cellwise_R2(X_meshgrid,Y_meshgrid,Value_matrix,at_x,at_y)

[column_upr, column_lwr] = value2index(X_meshgrid(1,:), at_x);
[row_upr, row_lwr]       = value2index(Y_meshgrid(:,1), at_y);


value = arrayfun(@elementwise, column_lwr, column_upr, row_upr, row_lwr, at_x, at_y);




    function value = elementwise(column_lwr, column_upr, row_lwr, row_upr, at_x, at_y)

    X = [X_meshgrid(1, column_lwr), X_meshgrid(1, column_upr);
         X_meshgrid(1, column_lwr), X_meshgrid(1, column_upr)];

    Y = [Y_meshgrid(row_upr, 1), Y_meshgrid(row_upr, 1);
         Y_meshgrid(row_lwr, 1), Y_meshgrid(row_lwr, 1)];
     
    input_values = [Value_matrix(row_upr, column_lwr), Value_matrix(row_upr, column_upr);
                    Value_matrix(row_lwr, column_lwr), Value_matrix(row_lwr, column_upr)];

    value = Linear_interpolation_R2(X,Y,input_values, at_x, at_y);


    end

end