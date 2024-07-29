%Artemis_Antsou_12220
% Erwtima (A)
a1 = zeros(2,6);
a2 = 1:3:16;
a3 = ones(3,3);
a4 = eye(3,3);
a5 = [a3,a4];
A = [a1;a2;a5]

b1 = 1:6;
b2 = reshape(b1,3,2)
B = repmat(b2,2,2)

c1 = diag([2:2:10],+1)
c2 = zeros(1,6)
c3 = eye(2,6)
C = [c1;c2;c3]

% Erwtima (B)
X = randi(100,11,10)
X1 = X([2,3,6,7],6)
X2 = X(end,[1:2:9])
rows = [2:3:11]
cols = [1:3:10]
X3 = X(rows, cols)
X4 = reshape(X,[55,2])

% Erwtima (C)
Y = randi([10,50],7,7)
Y1 = diag(Y)
Z = Y./Y1'
Z1 = round(Z)
Z2 = floor(Z)
Z3 = ceil(Z)
%telos_ergasias



