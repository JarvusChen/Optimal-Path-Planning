% find = 我要找的數
% clear
% clc
% find = 0
% table = [0 2;1 3]
function[A] = finalpath(find,table)
    A = 0;
    m = size(table);
    for i = 1:m(1)
        for j = 1:m(2)
            if table(i,j) == find
                A = i;
                break;
            end
        end
    end
end
% A