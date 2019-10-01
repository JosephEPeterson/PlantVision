% clear;close all;clc

% A = imread('./sprouting.jpg');
A = imread('./Shrub.jpg');
% A = imread('./P3.png');

[rows columns colorbands] = size(A);

hsv = rgb2hsv(A);
hueImage = hsv(:, :, 1);
valueImage = hsv(:, :, 3);

subplot(3,2,1);
histogram(hueImage,500);
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);

% GreenPixels = hueImage > .18 & hueImage < .25 & valueImage<.8;
% GreenPixels = hueImage > .177 & hueImage < .246 & valueImage<.8;
GreenPixels = hueImage > .177 & hueImage < .306 & valueImage<.8;


subplot(3,2,2); imshow(A); title('Initial picture')
subplot(3,2,3); imshow(hsv); title('HSV conversion')
subplot(3,2,4); imshow(hueImage); title('Hue')
subplot(3,2,5); imshow(GreenPixels); title('Green pixels')
subplot(3,2,6); imshow(hsv(:,:,2)); title('Saturation')
plantArea2 = sum(GreenPixels(:));
