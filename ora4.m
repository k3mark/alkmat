%Legkisebb négyzetek 2
% 
% t=[0.1 0.5 1.2 1.5 2 2.1 2.4 3 3.2]'; 
% f=[3.9 2.6 -0.8 0.3 3.2 3.8 3.2 -0.7 -0.9]';
% A=[ones(size(t)), cos(pi*t), sin(pi*t)];
% x=(A'*A)\(A'*f);
% xx = linspace(0,3.3);
% yy=x(1)+x(2)*cos(pi*xx)+x(3)*sin(pi*xx)
% figure; plot(t,f,'*',xx,yy)

%1.feladat
% t=[1 1.2 1.4 1.4 1.5 1.7 1.9 2 2.1 2.2]';
% f=[4.2 3.8 3.4 3.3 3.3 3 2.8 2.8 2.75 2.7]';
% A = [ones(size(t)), 1./t]
% x = (A'*A)\(A'*f)
% xx = linspace(1.3, 2.9);
% yy = x(1)+x(2)./xx;
% plot(t,f,'*',xx,yy)

%2.feladat
% t=[0.1 0.5 1.2 1.5 2 2.1 2.4  3  3.2  3.4 3.8 4 4.2  4.6  5]';
% f=[1 4.1 3 1 -1.5 -1.6 -1.7  -0.4  0.1 0.7  1.6 1.8 1.6 0.2 -2.5]';
% A = [sin(t), sin(2*t), sin(3*t)];
% x = (A'*A)\(A'*f)
% xx = linspace(0.1,5);
% yy = x(1)*sin(xx)+x(2)*sin(2*xx)+x(3)*sin(3*xx);
% plot(t,f,'*',xx,yy)

%3.feladat
% t=[15 46 74 105 135 166 196 227 258 288 319 349]';
% f=[-1.7 0.1 5.2 10.3 15.8 18.9 21.1 20.3 16.1 10.2 4.2 0.5]';
% A = [ones(size(t)), cos(2*pi*((t-14)/365))];
% x = (A'*A)\(A'*f)
% xx = linspace(5,360);
% yy = x(1)+x(2)*cos(2*pi*((xx-14)/365));
% plot(t,f,'*',xx,yy)

%4.fe3ladat
trees = readtable("trees.xlsx");
% figure; plot(trees.Girth, trees.Volume,'*');
% xlabel("Girth");
% ylabel("Volume");
%hold on
%refline(p)
% 
% figure; plot(trees.Girth, trees.Height,'*');
% xlabel("Girth");
% ylabel("Height");
% 
% figure; plot3(trees.Girth, trees.Height,trees.Volume,'*');
% 
% p = polyfit(trees.Girth, trees.Volume, 1);
% 
% % hold on
% % refline(p)
% % B = [ones(31,1), trees.Girth];
% % x = (B'*B)\(B'*trees.Volume);
% 
% A = [ones(size(trees.Volume)), trees.Girth, trees.Height];
% x = (A'*A)\(A'*trees.Volume);
% f=@(u,v) x(1)+x(2)*u+x(3)*v;
% hold on;
% fmesh(f, [0 20 60 90])
% 
% hiba1 = mse(trees.Volume, polyval(p, trees.Girth))
% hiba2 = mse(trees.Volume, f(trees.Girth, trees.Height))


%autós példa
load carsmall.mat
B = [Horsepower, Weight, Acceleration, MPG];
B(any(isnan(B),2),:)= [];
p = polyfit(B(:,2), B(:,4), 1);
figure; plot(B(:,2), B(:,4), '*')
hold on 
refline(p)
error1 = mse(B(:,4), polyval(p, B(:,2)))

figure; plot3(B(:,1), B(:,2), B(:,4), '*')
A = [ones(size(B(:,1))), B(:,1), B(:,2)]
x = (A'*A)\(A'*B(:,4))
f=@(u,v) x(1)+x(2)*u+x(3)*v;
hold on
fmesh(f, [min(B(:,1)), max(B(:,1)), min(B(:,2)), max(B(:,2))])











