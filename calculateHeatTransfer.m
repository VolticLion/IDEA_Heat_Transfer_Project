function [heatTransfer] = calculateHeatTransfer(imageFileName)
%CALCULATEHEATTRANSFER Calculates heat transfer from a color IR image
%   Detailed explanation goes here

%Import Image
colorImage = imread(imageFileName);

%Turn to grayscale
grayscaleImage = rgb2gray(colorImage);

%Calculate average value over row in image
averageValuePerRow = mean(grayscaleImage, 2);

%Set Min Max Temp
T_min = null;
T_max = null;

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

