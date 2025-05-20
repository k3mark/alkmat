% %8.feladat -> helikopter feladat
% 
% figure;
% axis([-5,5,-5,5]);
% axis equal;
% hold on;
% n = 5;
% A = [];
% for k = 1:n
%     axis equal;
%     axis([-5,5,-5,5]);
%     a = ginput(1);
%     hold on;plot(a(1),a(2),"b*");
%     A= [A;a];
% end
% 
% F = @(x) max(vecnorm(A-x,2,2));
% 
% [xopt, fopt] = fminunc(F,mean(A))
% plot(xopt(1), xopt(2), "ro")
% 
% alfa = linspace(0,2*pi);
% x = fopt*cos(alfa)+xopt(1);
% y = fopt*sin(alfa)+xopt(2);
% plot(x,y);


%1.feladat
% x1 = tárolószekrény száma
% x2 = komódok száma
%         tároló  komód
% fa      2       1       100       2x1 + x2 <= 100
% lakk    1       1       80        x1 +x2 <= 80
% üveg    1       0       40        X1 <= 40
% ----------------------------      x1,x2 >= 0
% bevétel 30      20                30x1 +20x2 ->max
%                                   30x1 +20x2 = 600

% c = [-30,-20];
% A = [2 1; 1 1; 1 0];
% b = [100; 80; 40];
% [xopt,fopt] = linprog(c,A,b,[],[],[0,0])
% optimalis_termeles = xopt
% bevetel = -fopt
% maradek_anyag = b-A*xopt

% c1=@(x,y) 2*x+y-100;
% c2=@(x,y) x+y-80;
% c3=@(x,y) x-40;
% figure; fimplicit(c1,[0,100,0,100],'b')
% hold on; fimplicit(c2,[0,100,0,100],'r')
% fimplicit(c3,[0,100,0,100],'g')
% 
% cfv=@(x,y) 30*x+20*y-1800;
% fimplicit(cfv,[0,100,0,100],'k--')

%3.feladat
% A=[-2 1; 1 -2];
% b=[8; 12];
% c=[-2; -1];
% [x,fval]=linprog(c,A,b,[],[],[0;0],[inf,inf])
% 
% 
% c1=@(x,y) -2*x+y-8;
% c2=@(x,y) x-2*y-12;
% 
% figure; fimplicit(c1,[0,100,0,100],'b')
% hold on; fimplicit(c2,[0,100,0,100],'r')
% 
% 
% cfv=@(x,y) 2*x+y-100;
% fimplicit(cfv,[0,100,0,100],'k--')
%nem korlátos, mert a célfüggvényt akárhogy tolhatnám felfele, nem
%korlátozna semmi

%################       7. feladat      ###############
%       I. telep            II. telep
%---------------------------------------
%T1  |      x1                  x2
%T2  |      x3                  x4
%T3  |      x5                  x6

%korlátozások
%x1 + x2 <= 200
%x3 + x4 <= 310
%x5 + x6 <= 420

%x1 + x3 + x5 <= 460
%x2 + x4 + x6 <= 560

%x1, x2, x3, x4, x5, x6 >= 0


% A = [1 1 0 0 0 0;0 0 1 1 0 0;0 0 0 0 1 1;1 0 1 0 1 0;0 1 0 1 0 1];
% b = [200;310;420;460;560];
% c = 50*ones(1,6) - [11 11 10 10 9 9] - [3 3.5 2 2.5 6 4] - [26 21 26 21 26 21]
% c = -c;
% [xopt, fopt,~,~,lambda] = linprog(c,A,b,[],[],[0 0 0 0 0 0])
% xopt;
% fopt = -fopt;
%lambda
%lambda.ineqlin


%################       6. feladat      ###############
%x1 = fotel
%x2 = kanapé
% x1 +x2 >= 10
%x1+3*x2 <= 60
%x1 <=x2
%30*x1 +90*x2 -> max

% -x1-x2 <= -10
% x1+3*x2 <= 60
% x1-x2 <= 0
% A = [-1 -1; 1 3; 1 -1];
% b = [-10;60;0];
% c = [-30;-90];
% [xopt, fopt] = linprog(c,A,b,[],[],zeros(1,2))
% 
% A = [1 7;2 6; 4 1];
% b = [49;50;56];
% c = [-6;-7];
% [xopt, fopt] = linprog(c,A,b,[],[])
% 
% b-A*xopt

90*3+130*3+70*8+120*4+60*1+130*2

40*3+10*2+15*6+20*1+25*3

20+10+25+20+15+40
