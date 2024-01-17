function f = f_lerp(x_list, f_list, x_n)

if exist("x_n", "var")
f = arrayfun(@internal, x_n);
else
f = @(x_n) arrayfun(@internal, x_n);
end


    function f_n = internal(x_n)
    
    [index_upr,index_lwr] = value2index(x_list(1), x_n, x_list(end), numel(x_list));
    
    f_n = f_list(:,index_lwr) + ...
          (x_n - x_list(index_lwr))*(f_list(:,index_upr) - f_list(:,index_lwr))./ ...
                                    (x_list(  index_upr)   - x_list(index_lwr));

    end

end
