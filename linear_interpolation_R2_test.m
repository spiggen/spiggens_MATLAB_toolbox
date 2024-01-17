
x = [0, 0;
     0, 0];
 
y = [1, 1;
     0, 0];
  
values = [1, 1;
          4, 4]; 
      
my_interp = Linear_interpolation_R2(x,y,values);

[x_int, y_int] = meshgrid(0:0.1:1, 0:0.1:1);

values_int = my_interp(x_int, y_int);

figure(1)
surf(x,y,values)

figure(2)
surf( x_int, y_int, values_int)