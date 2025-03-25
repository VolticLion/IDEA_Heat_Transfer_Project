function [heatTransfer] = calculateHeatTransfer(imageFileName)
%CALCULATEHEATTRANSFER Summary of this function goes here
%   Detailed explanation goes here

colorImage = imread(imageFileName);
grayscaleImage = rgb2gray(colorImage);
averageValuePerRow = mean(grayscaleImage, 2);

%Calculate average value over row in image

%Set Min Max Temp

%Set Pixel Values with Min Max Temp

%Plot Temp vs pixel value

%Create variable for each material k value

%Create variable for delta t value for each material

%Calculate thermal resistance

%Calculate q,cond value for each material

%Calculate q,cond,total for all materials

%Calculate theoretical delta t using qcond,total and thermal conductivity(k)

%Error between theoretical temp difference and real temperature difference
end

