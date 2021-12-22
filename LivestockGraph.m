% LivestockGraph
% Foundations of Engineering ENGE 1215 CRN 84393
% Giovanni Romero-Ruiz, Nov 1, 2021
clear
clc

%reads a csv file that has the data used for the graph
Livestock = readmatrix("LivestockinBglad.csv");

%gets the first column 
time = Livestock(:,1);
LivestockBglad = Livestock(:,2);

plot(time, LivestockBglad,'.-');

%Labels the x axis on the graph
xlabel(" Year,(5 year increments)")
%Labels the Y axis on the graph.
ylabel("Water used for livestock, (Billions of Gallons)")
%Gives the graph a title
title ("Livestock water usage over time") 

%Where my linear fit is created.
coefTimeLiveStock = polyfit(time, LivestockBglad, 1);
%coef stands for coefficient 
tFN = coefTimeLiveStock(1);
lsFN = coefTimeLiveStock(2);
%This gets the predicted values for coffee sales.
predictedLiveStockWaterUsage = tFN*time + lsFN;

%Graph the plot with the line of best fit
hold on
plot(time, predictedLiveStockWaterUsage, "g")