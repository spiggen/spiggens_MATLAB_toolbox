names        = evalin("caller", "who");
wsp_struct   = struct;

for index  = 1:numel(names)
name       = names{index};
wsp_struct.(name) = evalin("caller", name);
end
