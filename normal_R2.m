function [x_out, y_out] = normal_R2(x,y)

x_out = y;
y_out = -x;

len = sqrt(x_out.^2 + y_out.^2);

x_out = x_out./len;
y_out = y_out./len;

end