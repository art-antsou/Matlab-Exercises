%Artemis_Antsou_12220
%1st exercise

load('waterdata.mat','calc','magn');

%create the total hardness
calcnew = 2.5.*calc;
magnnew = 4.5.*magn;
totalhardness = calcnew + magnnew;
round(totalhardness);

%hardness rating
for i = 1:length(totalhardness)
    if totalhardness(i) == 0 || totalhardness(i) <= 100
        disp(['  ',num2str( totalhardness(i)), ' mg/l',' soft'])
    elseif  totalhardness(i) > 100 && totalhardness(i) <= 200
        disp(['  ',num2str( totalhardness(i)), ' mg/l',' moderatly hard'])
    elseif  totalhardness(i) > 200 && totalhardness(i) <= 300
        disp(['  ',num2str( totalhardness(i)), ' mg/l',' hard'])
    elseif totalhardness(i) > 300
        disp(['  ',num2str( totalhardness(i)), ' mg/l',' very hard'])
    end
end



