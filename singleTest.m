clc; clear all; close all;
Marker = imread('imgs/du.png');
I = imread('imgs/du_tr_1_5.png');
[height, width, ~] = size(I);
focal_length = 3067.45 / 4;%norm([height, width]);
in_mat = [focal_length,0,width/2+0.5,0;0, focal_length,height/2+0.5,0;0,0,1,0;0,0,0,1];
exmat = TestImage_DPE(im2double(Marker), im2double(I), in_mat, 0.25*3300/12350.0, 0.2, 0.8, 0.25, 1, 'IPPE', 1, 1);

f = figure('Position', [150 150 1280 720]);
[corner_x, corner_y] = draw_coordinate(exmat, in_mat, 0.25*3300/12350.0);
imagesc(I); 
truesize;
axis off; hold on;
plot([corner_x(1);corner_x(2)], [corner_y(1);corner_y(2)], 'r', 'LineWidth', 5);
plot([corner_x(1);corner_x(3)], [corner_y(1);corner_y(3)], 'g', 'LineWidth', 5);
plot([corner_x(1);corner_x(4)], [corner_y(1);corner_y(4)], 'b', 'LineWidth', 5);