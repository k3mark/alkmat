%1. feladat
%a
% f = @(x) cos(x)-3*x;
% fplot(f, [-5,5]);
% [root, fval] = fzero(f,0)

%b
% roots([3, 0, -12, 4])
% f = @(x) 3*x.^3 - 12*x + 4;
% fplot(f, [-5,5]);
% [root, fval] = fzero(f,2)

%c
% f = @(x) sin(x) - exp(x)
% fplot(f,[-5,5]);
% [root, fval] = fzero(f,-3)


%Egyenletrendszerek
% f = @(x) [x(1).^2 + (2*x(2).^2) ./ x(1) - 5,
%     x(2).^2 - x(1).*x(2) + 1];
% [gyok,fvertek]=fsolve(f,[1,1])

%2. feladat
% f = @(x) [sin(x(1)+2*x(2)) + x(1).*x(2),
%     cos(x(2)-1) - sin(x(1))];
% [gyok,fvertek]=fsolve(f,[-1:1;-1:1])
format long

%3. feladat
% f = @(x) [-4*x(1) + cos(2*x(1)- x(2)) - 3,
%     -3*x(2) + sin(x(1)) - 2];
% [gyok,fvertek]=fsolve(f,[-pi:pi;-pi:pi])


%4. feladat
% n = 10;
% x0 = 0.7;
% epszilon = 0.000001;
% difference = 1;
% count = 0;
% while difference > epszilon
%     x1 = (3*x0.^3 + 4) ./ 12;
%     difference = abs(x1-x0);
%     x0 = x1;
%     count = count + 1;
% end
% disp(count)
% disp(x0)

%5.feladat
f = @(x) x.^2;
df = @(x)2*x;

[x,itnum] = newton8(f,df,1,100,0.0000000001)





