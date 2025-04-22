%Példa_1
   
% f=@(x) sqrt(x)-2*sin(x);
% [xopt,fopt]=fminbnd(f,0,pi)
% xopt = 1.3543
% fopt = -0.78957

%1.feladat
% a)
% 
% f=@(x) x.^2.*cos(3.*x);   
% xx=linspace(0,6);
% plot(xx,f(xx))
% ax=gca;
% %%ax.XAxisLocatoin='origin';
% [xopt,fopt]=fminsearch(f,1);
% [xopt,fopt]=fminsearch(f,3);
% [xopt,fopt]=fminsearch(f,5);
% hold on;
% plot(xopt,fopt,'*')
% %b)
% 
% f=@(x) -1*(x.^2.*cos(3.*x));
% [xopt,fopt]=fminsearch(f,2);
% [xopt,fopt]=fminsearch(f,4);
% [xopt,fopt]=fminsearch(f,5);


%3.feladat

% f=@(x) 250.*sqrt(100+x.^2) + 100*(20-x);
% xx=linspace(0,20)
% ax=gca;
% plot(xx,f(xx))
% hold on;
% [xopt,fopt]=fminbnd(f,0,20)
% plot(xopt,fopt,'*')

%Többváltozós függvények minimalizálása

% xx=linspace(-2,2);
% yy=xx;
% [X,Y]=meshgrid(xx,yy);
% Z=X.^3+Y.^3-3*X-3*Y;
% figure; mesh(X,Y,Z)

% xx=linspace(-2,2);
% yy=xx;
% [X,Y]=meshgrid(xx,yy);
% Z=X.^3+Y.^3-3*X-3*Y;
% figure; contour(X,Y,Z)
% axis equal

% xx=linspace(-2,2);
% yy=xx;
% [X,Y]=meshgrid(xx,yy);
% Z=X.^3+Y.^3-3*X-3*Y;
% figure; contour(X,Y,Z,'ShowText','on')
% axis equal

%   f=@(x,y) x.^3+y.^3-3*x-3*y;
% fmesh(f,[-2,2])
% xx=linspace(-2,2,11); yy=xx;
% [X,Y]=meshgrid(xx,yy);
% dX=3*X.^2-3;
% dY=3*Y.^2-3;
% quiver(X,Y,dX,dY)

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
% xx=linspace(-2,2,11); yy=xx;
% [X,Y]=meshgrid(xx,yy);
% Z=X.^3+Y.^3-3*X-3*Y;
% [dX,dY]=gradient(Z);
% hold on; quiver(X,Y,dX,dY)

% f=@(x) x(1)^3+x(2)^3-3*x(1)-3*x(2);
% [xopt,fopt]=fminunc(f,[-1.5,-1.5])

% f=@(x,y) x.^3/6-x+x.*y.^2/4;
% figure;fmesh(f,[-2.5,2.5])
% figure;fcontour(f,[-2.5,2.5],'LevelList',linspace(-2,2,15))
% xx=linspace(-2.5,2.5,17);
% yy=xx;
% [X,Y]=meshgrid(xx,yy);
% Z=f(X,Y);
% [dX,dY]=gradient(Z);
% L=sqrt(dX.^2+dY.^2);
% axis equal;
% hold on;
% quiver(X,Y,-dX./L,-dY./L,0.3)
% F=@(x) f(x(1),x(2));
% [xopt,fopt]=fminunc(F,[1.5,0])

% f=@(x,y) sin(x).*cos(y) ;
% figure;fcontour(f,[0,2*pi])
% xx=linspace(0,2*pi,17);
% yy=xx;
% [X,Y]=meshgrid(xx,yy);
% Z=f(X,Y);
% [dX,dY]=gradient(Z);
% L=sqrt(dX.^2+dY.^2);
% axis equal;
% hold on;
% quiver(X,Y,-dX./L,-dY./L,0.3)
% F=@(x) f(x(1),x(2));
% [xopt,fopt]=fminunc(F,[1.5,0])





























