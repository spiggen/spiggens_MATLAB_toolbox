function x = neg2zero(x)
x = arrayfun(@(x) x*(0<x), x);


end