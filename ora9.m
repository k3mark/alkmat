% [xopt,fopt]=fminbnd(f,a,b)
% 
% f=@(x) sqrt(x)-2*sin(x);
% [xopt,fopt]=fminbnd(f,0,pi)
% 
% [xopt,fopt]=fminsearch(f,x0)
% [xopt,fopt]=fminunc(f,x0)
% 
% %xopt: hely
% %fopt: érték
% 
% f=@(x) sqrt(x)-2*sin(x);
% [xopt,fopt]=fminsearch(f,0.5)
% 
% [xopt,fopt]=fminunc(f,0.5)

%1.feladat
%a
% f = @(x) x.^2.*cos(3*x)
% [xopt, fopt] = fminbnd(f,0,6)
% x = linspace(0,6);
% p =plot(x,f(x))
% ax = gca;
% ax.XAxisLocation ='origin';
% [xopt, fopt] = fminsearch(f,5)
% hold on; plot(xopt, fopt,"*")
% [xopt, fopt] = fminsearch(f,1)
% hold on; plot(xopt, fopt,"*")
% [xopt, fopt] = fminsearch(f,3)
% hold on; plot(xopt, fopt,"*")
% 
% %3.feladat
% 
% f = @(x) (20-x)*100000 + sqrt(100+x.^2)*250000;
% x = linspace(0,20);
% figure; plot(x, f(x));
% [xopt, fopt] = fminbnd(f,0,20)
% hold on; plot(xopt, fopt, "*");
% %megoldás: fopt az ára

%többváltozós függvénye4k minimalizálása
% x = linspace(-2,2);
% y = linspace(-2,2);
% [x,y] = meshgrid(x,y);
% z = x.^3+y.^3-3*x-3*y;
% figure; mesh(x,y,z);
% axis equal;

%f = @(x,y) x.^3+x.^3+y.^3-3*x-3*y;
%figure; fcontour(f,[-2,2]);
%axis equal;




% %a szintvonalak
% xx=linspace(-2,2); yy=xx;
% [X,Y]=meshgrid(xx,yy);
% Z=X.^3+Y.^3-3*X-3*Y;
% figure; contour(X,Y,Z)
% axis equal
% %a gradiensmezo
% xx=linspace(-2,2,17); yy=xx;
% [X,Y]=meshgrid(xx,yy);
% dX=3*X.^2-3;
% dY=3*Y.^2-3;
% hold on; quiver(X,Y,dX,dY)

% %a szintvonalak
% xx=linspace(-2,2); yy=xx;
% [X,Y]=meshgrid(xx,yy);
% Z=X.^3+Y.^3-3*X-3*Y;
% figure; contour(X,Y,Z)
% axis equal
% %a gradiensmezo
% xx=linspace(-2,2,17); yy=xx;
% [X,Y]=meshgrid(xx,yy);
% Z=X.^3+Y.^3-3*X-3*Y;
% [dX,dY]=gradient(Z);
% hold on; quiver(X,Y,dX,dY)

% %negatív a szintvonalak
% xx=linspace(-2,2); yy=xx;
% [X,Y]=meshgrid(xx,yy);
% Z=X.^3+Y.^3-3*X-3*Y;
% figure; contour(X,Y,Z)
% axis equal
% %negatív a gradiensmezo
% xx=linspace(-2,2,17); yy=xx;
% [X,Y]=meshgrid(xx,yy);
% Z=X.^3+Y.^3-3*X-3*Y;
% [dX,dY]=gradient(Z);
% hold on; quiver(X,Y,-dX,-dY)

% %fminsearch függvénnyel:
% f=@(x) x(1)^3+x(2)^3-3*x(1)-3*x(2);
% [xopt,fopt]=fminsearch(f,[0.5,0.5])


% %Az fminunc f¨uggv´ennyel:
% f=@(x) x(1)^3+x(2)^3-3*x(1)-3*x(2);
% [xopt,fopt]=fminunc(f,[0.5,0.5])
% %Az fminunc f¨uggv´ennyel:
% f=@(x) x(1)^3+x(2)^3-3*x(1)-3*x(2);
% [xopt,fopt]=fminunc(f,[-0.5,0])

%7.feladat
x = linspace(-2.5, 2.5);
y = linspace(-2.5, 2.5);
[x,y] = meshgrid(x,y);
z = (1/6)*x^3-x+(1/4)*x.*y.^2;
figure; mesh(x,y,z);

figure; contour(x,y,z)

xx = linspace(-2.5, 2.5, 17);
yy = xx;
[X,Y] = meshgrid(xx,yy);
Z = f(X,Y);
[dX,dY] = gradient(Z);
hold on; quiver(X,Y, -dX, -dY);







