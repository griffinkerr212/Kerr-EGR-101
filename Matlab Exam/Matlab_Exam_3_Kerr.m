% Griffin Kerr
% MATLAB Exam Question 3
% 10/9/2025

function [CalcProb1,CalcProb2] = Matlab_Exam_3_Kerr(TotalLat,TotalLong,TotalAlt,LatAdj,LongAdj,t)
% Predeclarations
% t is time array from problem 1
% TotalLat, TotalLong, TotalAlt from problem 1
% LatAdj, LongAdj, from problem 2
Lat = 34.727493; %UAH Latitude
Long = -86.635811; %UAH Longitude
Alt = 0; %Alt

CalcProb1 = [];
for ii = 1:length(t) % Calculate problem 1 distance
    deltaLat1(ii) = 364320 .* (TotalLat(ii) - Lat);
    deltaLong1(ii) = 364320 .* (TotalLong(ii) - Long);
    deltaAlt1(ii) = TotalAlt(ii) - Alt;
    CalcProb1(ii) = sqrt(deltaLat1(ii).^2+deltaLong1(ii).^2+deltaAlt1(ii).^2);
end 
CalcProb2 = [];
for ii = 1:length(t) %Calculate problem 2 distance
    deltaLat2(ii) = 364320 .* (LatAdj(ii) - Lat);
    deltaLong2(ii) = 364320 .* (LongAdj(ii) - Long);
    deltaAlt2(ii) = TotalAlt(ii) - Alt;
    CalcProb2(ii) = sqrt(deltaLat2(ii).^2+deltaLong2(ii).^2+deltaAlt2(ii).^2);
end 
%Plot
figure
hold on 
plot(t,CalcProb1,'r -');
plot(t,CalcProb2,'g -');
title("Distance travled from launch point");
xlabel("Latitude");
ylabel("Longitude");
hold off
end