function [heatConduction] = qCond(tOne, tTwo, r)
%QCOND Summary of this function goes here
%   Detailed explanation goes here

heatConduction = (tTwo - tOne) / r;

end