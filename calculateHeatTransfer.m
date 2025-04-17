function [heatTransfered] = calculateHeatTransfer(imageFileName, maxTemp, minTemp, kValues, lValues, areaCont)
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
plot(averageValuePerRow, scaledValuePerRow);

%Create variable for each material k value
k1 = kValues(1);
k2 = kValues(2);

%Create variable for delta t value for each material
%deltaT1 = 
%deltaT2 = 
%deltaTTotal = 

%Calculate thermal resistance
L1 = lValues(1);
L2 = lValues(2);

rConductivity1 = rCond(L1, kValues(1), areaCont);
rConductivity2 = rCond(L2, kValues(2), areaCont);

%Calculate q,cond value for each material
q1 = qCond(deltaT1, rConductivity1);
q2 = qCond(deltaT2, rConductivity2);

%Calculate q,cond,total for all materials
qTotal = qCond(deltaTTotal);
heatTransfered = qTotal;

%Calculate theoretical delta t using qcond,total and thermal conductivity(k)

%Error between theoretical temp difference and real temperature difference
end

