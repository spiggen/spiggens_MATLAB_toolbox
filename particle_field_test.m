addpath("C:\Users\jonas\OneDrive - KTH\Matlab-projekt\Spiggen_s Matlab toolbox _3\", ...
        "C:\Users\jonas\OneDrive - KTH\Matlab-projekt\Flow-fields\")

delta_t = 0.005;
animate_field(@field_1, ...
              @(x,y,fcn) Euler_forward(x,y,fcn, delta_t), ...
              0,1,0,1);




function [dxdt, dydt] = field_1(x,y)

dxdt = x^2;
dydt = sin(x)-0.5*y^2;

end