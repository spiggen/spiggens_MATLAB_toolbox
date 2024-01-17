function patchobj = patchfun(fun, patchobj)
[patchobj.vertices(:,1), patchobj.vertices(:,2), patchobj.vertices(:,3)] = ...
    arrayfun(@(x,y,z)fun(x,y,z), patchobj.vertices(:,1), patchobj.vertices(:,2), patchobj.vertices(:,3));

end