kValues = [0.165, 0.175, 0.25];

minTempExp1 = 26.39;
maxTempExp1 = 110;
lValuesExp1 = [0.02786, 0.02562];
areaContExp1 = 0.0262 * 0.02483;
deltaTExp1 = 59.2;

minTempExp2 = 27.56;
maxTempExp2 = 106.11;
lValuesExp2 = [0.02538, 0.02563];
areaContExp2 = 0.02440 * 0.02443;
deltaTExp2 = 57;

minTempExp3 = 28.4;
maxTempExp3 = 102.78;
lValuesExp3 = [0.02566, 0.02564];
areaContExp3 = 0.02488 * 0.02507;
kValuesExp3 = [kValues(1), kValues(3)];
deltaTExp3 = 53.4;

%[fart1] = calculateHeatTransfer('Pine.JPG', maxTempExp1, minTempExp1, kValues(1), lValuesExp1, areaContExp1, deltaTExp1);
%[fart2] = calculateHeatTransfer('Oak.JPG', maxTempExp2, minTempExp2, kValues(2), lValuesExp2, areaContExp2, deltaTExp2);
[fart3] = calculateHeatTransfer('PineNylon.JPG', maxTempExp3, minTempExp3, kValuesExp3, lValuesExp3, areaContExp3, deltaTExp3);