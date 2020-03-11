%Dada f(x). f:R -> R
%f(x) = a0 + a1 * x + a2 * x^2 + a3 * x^3 ...
%f(0) = a0 

function Taylor
%clear all
%clc
    format long

    disp('Calcuo da expansao de Taylor de uma funcao em torno de a = 0');
    x = input('Entre com o valor de x: ');
    N = input('Entre com o numero de termos da serie: ');
    
    s = 0;
    fac = 1;
%     for i = 1:1:N
%         
%     end
    % exponencial
    for n = 0: (N - 1)
        if (n > 0) 
            fac = fac*n;
        end;
        s = s + x^n / fac;
    end;
    
    % seno
    sig = 1;
    for n=0:N
        if mod(n, 2) == 1
            s = s + sig*x^n/factorial(n);
            sig = -sig;
        end;
    end;
end