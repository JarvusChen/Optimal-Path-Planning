% clear
% clc
% close
% 
% mapPic = imresize(imread(['D:\路徑捷徑-勿刪\Desktop\多目標控制\Arduino\mapTest7.jpg']),[960 1280]);

function [mapPic2, obstacle,startpoint] = map2barr9(mapPic)

% [filename, pathname] = uigetfile({'*.jpg';'*.tif';'.*.png'},'Selectan image 1');
% imgName=[pathname filename];
% src=imresize(imread(imgName),[545 961]);
% imshow(mapPic);

% pX = [650 647 644 642 640 638 636 634 632];
pX = [635 634 636 638 640 642 644 647 650];
% pY = [864 747 630 544 458 392 326 276 224];
pY = [238 292 344 410 476 548 638 750 860];
% dX = [150 140 127 118 109 102 95 92 87];
dX = [85 89 95 102 109 118 127 135 147];



%存障礙物的位置
data(1:9,1:9) = 0;

%一般點的RGB
avg_r = 180;
avg_g = 172;
avg_b = 163;

k = 1;
% for i = 634:910
%     for j = 62:1264
%         R(k) = mapPic(i,j,1);
%         G(k) = mapPic(i,j,2);
%         B(k) = mapPic(i,j,3);
%         k = k + 1;
%     end
% end
% avg_r = mean(R,2)
% avg_g = mean(G,2)
% avg_b = mean(B,2)

% 192 169 73
% for i = 182:214
%     for j = 852:874
%         R(k) = mapPic(j,i,1);
%         G(k) = mapPic(j,i,2);
%         B(k) = mapPic(j,i,3);
%         k = k + 1;
%     end
% end
% avg_r = mean(R,2)
% avg_g = mean(G,2)
% avg_b = mean(B,2)

a = size(pX);
for m = 1:a(2)
    for n = 0:4
        k = 1;
        Pavg_r = 0;
        Pavg_g = 0;
        Pavg_b = 0;
        PR = [];
        PG = [];
        PB = [];
        x = pX(m) - dX(m)*n;
        y = pY(m);
        for i = y-15:y+15
            for j = x-15:x+15
                PR(k) = mapPic(i,j,1);
                PG(k) = mapPic(i,j,2);
                PB(k) = mapPic(i,j,3);
                k = k + 1;
            end
        end
        Pavg_r = mean(PR,2);
        Pavg_g = mean(PG,2);
        Pavg_b = mean(PB,2);
        for o = y-15:y+15
            for p = x-15:x+15
                if n == 1
                    b = 4;
                end
                if n == 2
                    b = 3;
                end
                if n == 3
                    b = 2;
                end
                if n == 4
                    b = 1;
                end
                if n == 0
                    b = 5;
                end
                if abs(192 - Pavg_r) < 30 && abs(169 - Pavg_g) < 30 && abs(Pavg_b - 72) < 30
                    mapPic(o,p,1) = 255;
                    mapPic(o,p,2) = 255;
                    mapPic(o,p,3) = 1;
                    data(m,b) = 2;  %start
                elseif abs(avg_r - Pavg_r) > 60 || abs(avg_g - Pavg_g) > 60 || abs(avg_b - Pavg_b) > 70
                    mapPic(o,p,1) = 255;
                    mapPic(o,p,2) = 1;
                    mapPic(o,p,3) = 1;
                    data(m,b) = 1;
                else
                    mapPic(o,p,1) = 1;
                    mapPic(o,p,2) = 1;
                    mapPic(o,p,3) = 1;
                end
            end
        end
    end
    for n = 1:4
        k = 1;
        Pavg_r = 0;
        Pavg_g = 0;
        Pavg_b = 0;
        PR = [];
        PG = [];
        PB = [];
        x = pX(m) + dX(m)*n;
        y = pY(m);
        for i = y-15:y+15
            for j = x-15:x+15
                PR(k) = mapPic(i,j,1);
                PG(k) = mapPic(i,j,2);
                PB(k) = mapPic(i,j,3);
                k = k + 1;
            end
        end
        Pavg_r = mean(PR,2);
        Pavg_g = mean(PG,2);
        Pavg_b = mean(PB,2);
        for o = y-15:y+15
            for p = x-15:x+15 
                if abs(192 - Pavg_r) < 30 && abs(169 - Pavg_g) < 30 && abs(Pavg_b - 72) < 30
                    mapPic(o,p,1) = 255;
                    mapPic(o,p,2) = 255;
                    mapPic(o,p,3) = 1;
                    data(m,m+5) = 2;  %start
                elseif abs(avg_r - Pavg_r) > 60 || abs(avg_g - Pavg_g) > 60 || abs(avg_b - Pavg_b) > 60
                    mapPic(o,p,1) = 255;
                    mapPic(o,p,2) = 1;
                    mapPic(o,p,3) = 1;
                    data(m,n+5) = 1;
                else
                    mapPic(o,p,1) = 1;
                    mapPic(o,p,2) = 1;
                    mapPic(o,p,3) = 1;
                end
            end
        end
    end
end
mapPic2 = mapPic;
figure;
% imshow(mapPic2);


obstacle = [];
startpoint = 1;
%製作對應數字
k = 1;
for i = 1:9
    for j = 1:9
        dataValue(i,j) = k;
        k = k + 1 ;
    end
end
% dataValue = dataValue(7:15,1:9);

for i = 1:9
    for j = 1:9
        if data(i,j) == 1
            a = size(obstacle);
            obstacle(a(2)+1) = dataValue(i,j);
        end
        if data(i,j) == 2
            startpoint = dataValue(i,j);
        end
    end
end

startpoint;
obstacle;


end