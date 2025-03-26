function [heatTransfer] = calculateHeatTransfer(imageFileName)
%CALCULATEHEATTRANSFER Calculates heat transfer from a color IR image
%   Detailed explanation goes here

%TODO: Clairify outputs of this function & complete their calculation   1x`

%Import Image
colorImage = imread(imageFileName);

%Turn to grayscale
grayscaleImage = rgb2gray(colorImage);

%Calculate average value over row in image
averageValuePerRow = mean(grayscaleImage, 2);

%Set Min Max Temp

[n,m] = size(grayscaleImage);

T_min = min(grayscaleImage);
T_max = max(grayscaleImage);


%Set Pixel Values with Min Max Temp
renameThisVariable = T_min + (T_max - T_min) * (x3 - min(x3)) / (max(x3) - min(x3));

%Plot Temp vs pixel value

%Create variable for each material k value

%Create variable for delta t value for each material

%Calculate thermal resistance

%Calculate q,cond value for each material

%Calculate q,cond,total for all materials

%Calculate theoretical delta t using qcond,total and thermal conductivity(k)

%Error between theoretical temp difference and real temperature difference
end

