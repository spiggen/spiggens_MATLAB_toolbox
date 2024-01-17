function Y = primitive(y_vec, linx)
%if isequal(class(fcn), "double"); fcn = @(i) fcn(:,i); end


delta_x = abs(linx(end) - linx(end-1));
Y = zeros(height(y_vec(:,1)),width(linx));

y = y_vec(:,1);
x = 0;
for i = 1:numel(linx)
x = x + delta_x;
y = y + y_vec(:,i)*delta_x;
Y(:,i) = y;

end

%out_fcn = @(x) y_vec(value2index(linx(1), x, linx(end), numel(linx)));
end