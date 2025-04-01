function [heatTransfer] = calculateHeatTransfer(imageFileName, maxTemp, minTemp)
%CALCULATEHEATTRANSFER Calculates heat transfer from a color IR image
%   Detailed explanation goes here

%TODO: Clairify outputs of this function & complete their calculation   1x`

%Import Image
colorImage = imread(imageFileName);

%Turn to grayscale
grayscaleImage = rgb2gray(colorImage);

%Calculate average value over row in image
averageValuesPerRow = mean(grayscaleImage, 2);

%Set Min Max Temp
T_min = minTemp;
T_max = maxTemp;


%Set Pixel Values with Min Max Temp
scaledValuesPerRow = T_min + (T_max - T_min) * (averageValuePerRow - min(averageValuePerRow)) / (max(averageValuePerRow) - min(averageValuePerRow));

%Plot Temp vs pixel value
plot(scaledValuePerRow,averageValuePerRow);

%Create variable for each material k value
k1 = 
k2 = 

%Create variable for delta t value for each material
deltaT = 

%Calculate thermal resistance
rConductivity = (L) / (k1*A);

%Calculate q,cond value for each material

%Calculate q,cond,total for all materials

%Calculate theoretical delta t using qcond,total and thermal conductivity(k)

%Error between theoretical temp difference and real temperature difference
end

