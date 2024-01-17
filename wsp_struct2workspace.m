names = fieldnames(wsp_struct);

for index = 1:numel(names)
name = names{index};
assignin("caller", name, wsp_struct.(name));
end
clear wsp_struct