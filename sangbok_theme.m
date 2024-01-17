function sangbok_theme(axis)
background_color = [1 10 20]/255;
axis_color = [200 150 0]/255;

set(0, "defaultaxescolor",   background_color)
set(0, "defaultfigurecolor", background_color)

if exist("axis","var")
axis.GridColorMode = 'manual';
axis.GridAlpha = 0.2;
axis.GridColor = axis_color;
axis.Color = background_color;
axis.XGrid = "on";
axis.YGrid = "on";
axis.ZGrid = "on";
axis.XColor = axis_color;
axis.YColor = axis_color;
axis.ZColor = axis_color;
axis.ColorOrder = [254 234 38;
                   233 210 0;
                   181 163 0;
                   181 120 0;
                   223 149 0;
                   254 171 0;
                   254 185 44;
                   254 195 73;
                   254 296 107;
                   254 171 107;
                   240 147 75]./255;
end

end