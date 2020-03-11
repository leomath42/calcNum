format long

n = 3;
a = [3 -1 1; 1 5 1; 1 1 7];
b = [-2; 14; 24];
x = [0; 0; 0;] ;
bG = b;
u = a;
b = b;
l = eye(n);
disp(u)
for i = 1:3
 for j = 1:3
     l(i, j)= u(i,j)/u(i,i);
     u(i,j) = 0;
     for k = j+1:n
         u(i, k) = u(i,i) - l(i, k) * u(j, k);
     end
     bG(i) = bG(i) - l(i,j) * bG(j)
 end
end
disp(u)