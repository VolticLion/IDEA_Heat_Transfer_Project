function [heatTransfer] = calculateHeatTransfer(imageFileName, maxTemp, minTemp, kValues)
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

%Plot Temp vs pixel value (MAY NEED FIX)
plot(scaledValuePerRow,averageValuePerRow);

%Create variable for each material k value
k1 = kValues(1);
k2 = kValues(2);
k3 = kValues(3);

%Create variable for delta t value for each material
%deltaT1 =

%Calculate thermal resistance
rConductivity = 0;
for eachR = 1:3
    rConductivity = rConductivity + rCond(L, kValues(eachR), A);
end

%Calculate q,cond value for each material
q1 = qCond();
q2 = qCond();
q3 = qCond();

%Calculate q,cond,total for all materials
qTotal = qCond();

%Calculate theoretical delta t using qcond,total and thermal conductivity(k)

%Error between theoretical temp difference and real temperature difference
end

