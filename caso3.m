% caso 1
clc
format long

n = 3;
% a = [3 -1 -1; 1 5 1; 1 1 7];
% a = [10 2 1; 1 5 1; 2 3 10];
% a = [0 -1 -1; 1 5 1; 1 1 7];
% b = [-2; 14; 24];
% b = [7; -8; 6];
% b = [-2; 14; 24];

a = [1 1 7; 1 5 1; 0 -1 -1;];
b = [24; 14; -2;];
%a = input('matiz a:', 'l');
%b = input('matriz b:', 'l');
x = [0; 0; 0;];
bG = b;
u = a;
bG = b;
l = eye(n);

% gauzz
for k = 1 : n - 1
    for i = k + 1 : n
        l(i,k) = u(i,k)/u(k,k);
        u(i,k) = 0;
        for j = k + 1 : n
            u(i,j) = u(i,j) - l(i,k) * u(k,j);
        end
        bG(i) = bG(i) - l(i,k) * bG(k);
      
    end
end

% triangular

for i = n:-1:1
    s = 0;
    for j = i+1:n
        s = s+u(i,j) * x(j);
    end
    x(i) = (bG(i) - s) / u(i,i);
end
