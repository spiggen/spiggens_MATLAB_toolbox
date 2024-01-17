function [theta, r] = cart2pol(x,y)
if x < 0
theta = pi + atan(y/x);
elseif x > 0
theta = atan(y/x);
elseif y > 0
theta = pi/2;
elseif y < 0
theta = - pi/2;
else
theta = 0;
end

r = norm([x;y]);

end