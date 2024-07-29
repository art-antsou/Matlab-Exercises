%2nd exercise
load('data.mat')
disp('to exit the program : n=-999')
n = input('give a number, ');
[rows, cols] = size(var1);
%we put x inside the while to reset to zero after a loup  
while n ~= -999
    % βαζω το χ σαν σημαια για να μου εμφανισει την θεση και την τιμη του 
    %τρεξω ολο τον πινακα και αν εμφανιστει γινεται 1 και αν οχι παραμενει
    %0 και ξανα βαζει καινουρια τιμη ο χρηστης.
       x = 0; 
       for i = 1:rows
           for j = 1:cols
                if var1(i,j) == n
                    disp(["Row: ", num2str(i), "Col: ", num2str(j), "Value: ", num2str(n)]) 
                    x = 1; 
                end
           end
       end
       if x == 0
           disp(["No element is equal to", num2str(n)])
       end
       n = input('give a number, ');
end
disp("END")