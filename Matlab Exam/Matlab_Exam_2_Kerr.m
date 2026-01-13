% Griffin Kerr
% MATLAB Exam Question 2
% 10/8/2025

function [LatAdj,LongAdj,OPlot,APlot] = Matlab_Exam_2_Kerr(TotalLat,TotalLong,LatDrone,LongDrone,AltDrone)
%Fine where latitude is greater and less than, and where longitude is greater and less than 
NoFly = find(TotalLat > 34.689220 & TotalLat < 34.710283 & TotalLong > -86.714718 & TotalLong < -86.631106);
%Adjust Lat and Long values to not be in nofly zone
TotalLat(NoFly) = 34.7115;
TotalLong(NoFly) = -86.6300;
LatAdj = TotalLat;
LongAdj = TotalLong;
%Original Plot
figure;
OPlot = plot3(LatDrone, LongDrone, AltDrone);
title("Original drone flight path tornado spiral test");
xlabel("Latitude");
ylabel("Longitude");
zlabel("Altitude(ft)");
%Adjusted Plot
figure;
APlot = plot3(LatAdj, LongAdj, AltDrone);
title("Altered drone flight path tornado spiral test");
xlabel("Latitude");
ylabel("Longitude");
zlabel("Altitude(ft)");
end