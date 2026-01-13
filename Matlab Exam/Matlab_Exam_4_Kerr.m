% Griffin Kerr
% MATLAB Exam Question 4
% 10/9/2025

%Predeclarations
%CalcProb1= distance calculation from problem 3
% T = time array from problem 1
% TarDis is Target Distance input
% DroneBat is drone battery input

function [] = Matlab_Exam_4_Kerr(CalcProb1,t,TarDis,DroneBat)
counter = 1;
while CalcProb1(counter) <= TarDis || t <= DroneBat
    if DroneBat > 100 %Drone battery greater than 100 error
        error("Time is greater than 100.");
    end
    if DroneBat <= 0 %Battery less than zero error
       error("Time is less than zero.")
    end
    if TarDis > 100 %Distance greater than 100 error
        error("Distance is greater than 100.");
    end
    if TarDis < 0 %Distance is less than zero error
        error("Distance is less than zero.")
    end
    if length(t) ~= length(CalcProb1) %Array length does not match error
        error("Time array and distance array length does not match.")
    end


    if CalcProb1 == TarDis %Target distance achieved, break
        fprintf("Drone has arrived at target distance. Travel time was: %d", DroneBat)
        break
    end
    if DroneBat == t %Drone battery expired break
        fprintf("Battery has expired, Drone distance is %d",CalcProb1)
    end
    counter = counter + 1;
    if counter > 150 %stop infinite loop
        error("Inf Loop.")
    end
end
end