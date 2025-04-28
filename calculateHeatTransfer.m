function [qTotal, q1, q2] = calculateHeatTransfer(imageFileName, maxTemp, minTemp, kValues, lValues, areaCont, deltaTValues)
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
T_min = minTemp;
T_max = maxTemp;


%Set Pixel Values with Min Max Temp
scaledValuePerRow = T_min + (T_max - T_min) * (averageValuePerRow - min(averageValuePerRow)) / (max(averageValuePerRow) - min(averageValuePerRow));

%Plot Temp vs pixel value (MAY NEED FIX)
plot(1:length(scaledValuePerRow), scaledValuePerRow);
title(imageFileName);
hold on;

%Create variable for each material k value
k1 = kValues(1);
if length(kValues) > 1
    k2 = kValues(2);
end

%Create variable for delta t value for each material
deltaT1 = deltaTValues(2);
deltaT2 = deltaTValues(3);
deltaTTotal = deltaTValues(1);

%Calculate thermal resistance
L1 = lValues(1);
L2 = lValues(2);

rConductivity1 = rCond(L1, k1, areaCont);
if length(kValues) > 1
    rConductivity2 = rCond(L2, k2, areaCont);
    rSum = rConductivity2 + rConductivity1;
else
    rSum = rConductivity1 * 2;
end


%Calculate q,cond value for each material
q1 = qCond(deltaT1, rConductivity1);
q2 = qCond(deltaT2, rConductivity2);


%Calculate q,cond,total for all materials
qTotal = qCond(deltaTTotal, rSum);

%Calculate theoretical delta t using qcond,total and thermal conductivity(k)

%Error between theoretical temp difference and real temperature difference
end

