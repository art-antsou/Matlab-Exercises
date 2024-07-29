% Αρτεμις_Αντσου_12220_5η_εργασία

% K = stathera kostiakov (na xrhshmopoihthei 3.8)
K = input('stathera kostiakov K :');
% b = stathera kostiakov (na xrhshmopoihthei 0.26)
b = input('stathera kostiakov b :');
% t = xronos apo 1 ws 30 min
t = 1:2:30;
% I = aritmitiki dihthitikothta 
I = kostiakov(K,t,b);
% ypologismos athristikhs dihthitikothtas an isxiei Κ>0 και 0<b<1
for i = 1:length(t)
    if K>0 && b>0 && b<1
        % X = pinakas me tis times t kai I h 1h stili = t kai h 2h stili = I 
        X = [t(i)',I(i)'];
        disp (X)
    else
        disp('wrong number')
    end
end






