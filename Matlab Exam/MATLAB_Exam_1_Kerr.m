% Griffin Kerr
% MATLAB Exam Question 1
% 10/8/2025

% Predeclarations
Lat = 34.727493; %UAH Latitude
Long = -86.635811; %UAH Longitude
Alt = 0; %Alt
MaxRadius = 10560; %2 miles 10560 feet 
MaxAlt = 200; %200 feet
NumRotation = 12; %Number of rotations
R = 20902920; %Feet

t = 0:.001:100; %Time Array

%Equations
rt = MaxRadius * ((t./max(t)).^(3/2));%Radial distance from center
thetat = (2*pi) * NumRotation .* (t./max(t)); %rotation angle around center
Xt = rt .* cos(thetat); %Local x and y positions
Yt = rt .* sin(thetat);
AltDrone = MaxAlt .* (t ./ max(t)); %Alt calculatoin
LatDrone = Lat + (Yt ./R) .* 180 ./pi; %Lat of drone in degrees
LongDrone = Long + ((Xt ./ (R * cosd(Lat))*180)/pi); %Lat of drone in degrees


%Required Deliverables
TotalLat = LatDrone;
TotalLong = LongDrone;
TotalAlt = AltDrone;

%Plot
figure;
plot3(LatDrone, LongDrone, AltDrone);
title("Drone flight path tornado spiral test")
xlabel("Latitude")
ylabel("Longitude")
zlabel("Altitude(ft)")