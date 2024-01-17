%function booleans = isbetween(x0, x, x1)
%booleans = arrayfun(@(x) x0<x && x<=x1, x);

%end

function booleans = isbetween(x0, x, x1)

booleans = (x0 < x & x <= x1);

end