close all; clc; clear;

cd Chia/
I01 = imread('P1.png');

for i=1:13
    fname = strrep('P1.png', '1', string(i));
    dummy = imread(fname);
    
    hsv = rgb2hsv(dummy);
    hueImage = hsv(:, :, 1);
    valueImage = hsv(:, :, 3);

    GreenPixels = hueImage > .177 & hueImage < .306 & valueImage<.8;
    plantArea(i) = sum(GreenPixels(:));
end

cd ..

plot([1:13],plantArea); xlim([1 13])
