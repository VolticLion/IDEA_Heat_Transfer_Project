kValues = [0.165, 0.175, 0.25];

minTempExp1 = 26.39;
maxTempExp1 = 110;
lValuesExp1 = [0.02786, 0.02562];
areaContExp1 = 0.0262 * 0.02483;
deltaTExp1 = [59.2, 39.5, 19.7];

minTempExp2 = 27.56;
maxTempExp2 = 106.11;
lValuesExp2 = [0.02538, 0.02563];
areaContExp2 = 0.02440 * 0.02443;
deltaTExp2 = [57, 39.1, 12.9];

minTempExp3 = 28.4;
maxTempExp3 = 102.78;
lValuesExp3 = [0.02566, 0.02564];
areaContExp3 = 0.02488 * 0.02507;
kValuesExp3 = [kValues(1), kValues(3)];
deltaTExp3 = [53.4, 40.6, 8.1];

figure(1);
[qTotalExp1, q1Exp1, q2Exp1] = calculateHeatTransfer('Pine.JPG', maxTempExp1, minTempExp1, kValues(1), lValuesExp1, areaContExp1, deltaTExp1);
figure(2);
[qTotalExp2, q1Exp2, q2Exp2] = calculateHeatTransfer('Oak.JPG', maxTempExp2, minTempExp2, kValues(2), lValuesExp2, areaContExp2, deltaTExp2);
figure(3);
[qTotalExp3, q1Exp3, q2Exp3] = calculateHeatTransfer('PineNylon.JPG', maxTempExp3, minTempExp3, kValuesExp3, lValuesExp3, areaContExp3, deltaTExp3);
