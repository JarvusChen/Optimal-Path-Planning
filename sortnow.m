% clear
% clc
% A = [4 5 3 4 8 13]

function[C] = sortnow(A)
    a = size(A);
    C = A;
    for i = 1:a(2)
        for j = 1:a(2)
            if i ~= j
                b = size(C);
                if a(2) == b(2)
                    if C(i) == C(j)
                        C(j) = [];
                    end
                end
            end
        end
    end
end
% C

