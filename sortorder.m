% clear
% clc
% A = [1.5 0 2 2 1.1 0 6 4 3 0 0]

function[C] = sortorder2(A)
%     A_new = [];
    long = size(A);
    for i =1:long(2)
        if A(i) == 0
            A(i) = 999;
        end
    end
    B = sort(A);
    C = [];                 %²Ä´X­Ó
    
%     A = A_new;
%     B = sort(A);
%     long = size(A);  
    for i = 1:long(2)
        for j = 1:long(2)
            if B(i) == A(j)
                C(i) = j;
                A(j) = 0;
                break;
            end 
        end
    end
end
% C

