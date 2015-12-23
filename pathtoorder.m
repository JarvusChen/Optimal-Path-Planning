% clear
% clc
% A = [212   197   183   199   215   216   217   218];
%  nowdirection = -9;

function [B] = pathtoorder(A,nowdirection)
    direction = [];
    B = [];
    a = size(A);

    for i = 1:a(2)
        if i < a(2)
            direction(i) = A(i+1) - A(i);
        end
    end

    for i = 1:a(2)-1
        if direction(i) == nowdirection
            if nowdirection == -9 || nowdirection == -1 || nowdirection == 1 || nowdirection == 9
                b = size(B);
                B(b(2)+1) = 1;
            else
                b = size(B);
                B(b(2)+1) = 8;       
            end
        end
        if direction(i) ~= nowdirection
            b = size(B);
            if nowdirection == -9
                if direction(i) == -1
                    B(b(2)+1) = 5;
                    b = size(B);
                    B(b(2)+1) = 1;
                    nowdirection = -1;
                end
                if direction(i) == -10
                    B(b(2)+1) = 4;
                    b = size(B);
                    B(b(2)+1) = 8;
                    nowdirection = -10;
                end
                if direction(i) == 1
                    B(b(2)+1) = 7; 
                    b = size(B);
                    B(b(2)+1) = 1;
                    nowdirection = 1;
                end
                if direction(i) == -8
                    B(b(2)+1) = 6; 
                    b = size(B);
                    B(b(2)+1) = 8;
                    nowdirection = -8;
                end
                  if direction(i) == 8
                    B(b(2)+1) = 5;
                    b = size(B);
                    B(b(2)+1) = 4;
                    b = size(B);
                    B(b(2)+1) = 8;
                    nowdirection = 8;
                end
                if direction(i) == 9
                    B(b(2)+1) = 5;
                    b = size(B);
                    B(b(2)+1) = 5;
                    b = size(B);
                    B(b(2)+1) = 1;
                    nowdirection = 9;
                end
                if direction(i) == 10
                    B(b(2)+1) = 7;
                    b = size(B);
                    B(b(2)+1) = 6;
                    b = size(B);
                    B(b(2)+1) = 1;
                    nowdirection = 10;
                end
            end
        end
        if nowdirection == -8
            if direction(i) == -10
                B(b(2)+1) = 5;
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = -10;
            end
            if direction(i) == -9
                B(b(2)+1) = 4;
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = -9;
            end
            if direction(i) == 1
                B(b(2)+1) = 6; 
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = 1;
            end
            if direction(i) == 10
                B(b(2)+1) = 7; 
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = 10;
            end
        end
        if nowdirection == 1
            if direction(i) == -9
                B(b(2)+1) = 5;
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = -9;
            end
            if direction(i) == -8
                B(b(2)+1) = 4;
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = -8;
            end
            if direction(i) == 10
                B(b(2)+1) = 6; 
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = 10;
            end
            if direction(i) == 9
                B(b(2)+1) = 7; 
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = 9;
            end
        end
        if nowdirection == 10
            if direction(i) == -8
                B(b(2)+1) = 5;
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = -8;
            end
            if direction(i) == 1
                B(b(2)+1) = 4;
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = 1;
            end
            if direction(i) == 9
                B(b(2)+1) = 6; 
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = 9;
            end
            if direction(i) == 8
                B(b(2)+1) = 7; 
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = 8;
            end
        end
       if nowdirection == 9
            if direction(i) == 1
                B(b(2)+1) = 5;
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = 1;
            end
            if direction(i) == 10
                B(b(2)+1) = 4;
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = 10;
            end
            if direction(i) == 8
                B(b(2)+1) = 6; 
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = 8;
            end
            if direction(i) == -1
                B(b(2)+1) = 7; 
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = -1;
            end
       end
        if nowdirection == 8
            if direction(i) == 10
                B(b(2)+1) = 5;
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = 10;
            end
            if direction(i) == 9
                B(b(2)+1) = 4;
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = 9;
            end
            if direction(i) == -1
                B(b(2)+1) = 6; 
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = -1;
            end
            if direction(i) == -10
                B(b(2)+1) = 7; 
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = -10;
            end
        end
        if nowdirection == -1
            if direction(i) == 9
                B(b(2)+1) = 5;
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = 9;
            end
            if direction(i) == 8
                B(b(2)+1) = 4;
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = 8;
            end
            if direction(i) == -10
                B(b(2)+1) = 6; 
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = -10;
            end
            if direction(i) == -9
                B(b(2)+1) = 7; 
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = -9;
            end
       end
         if nowdirection == -10
            if direction(i) == 8
                B(b(2)+1) = 5;
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = 8;
            end
            if direction(i) == -1
                B(b(2)+1) = 4;
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = -1;
            end
            if direction(i) == -9
                B(b(2)+1) = 6; 
                b = size(B);
                B(b(2)+1) = 1;
                nowdirection = -9;
            end
            if direction(i) == -8
                B(b(2)+1) = 7; 
                b = size(B);
                B(b(2)+1) = 8;
                nowdirection = -8;
            end
        end
    end
end