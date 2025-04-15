%5. feladat
function [x, itnum] = newton8(f,df,x0,maxit,epsz)
    itnum = 0;
    x = x0;
    while abs(x - (x - f(x)/df(x))) >= epsz & itnum < maxit
        itnum = itnum + 1;
        x = x - f(x)/df(x);
    end
end