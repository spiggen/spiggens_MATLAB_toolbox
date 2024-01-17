function [index_upr, index_lwr] = value2index(value_1, value, value_end, numel) %% linspace_list assumed to be linearly spaced out

index = (value - value_1)*(numel - 1)/(value_end - value_1) + 1; %% straight-line equation

index_upr = ceil(index);
index_lwr = floor(index);

if index_upr == index_lwr;                 index_lwr = index_lwr-1;                    end
if index_upr > numel || index_lwr > numel; index_lwr = numel-1; index_upr = numel;     end
if index_upr < 1     || index_lwr < 1;     index_lwr = 1;       index_upr = 2;         end

end