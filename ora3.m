%Gynegén meghat lineáris egyenletek
% A = [1 0.99;0.99 0.98];
% b1 = [1.99;1.97];
% b2 = [1.98;1.98];
% 
% x1 = A\b1
% x2 = A\b2
% 
% cond(A,"inf")

% A = -triu(ones(100))+2*eye(100);
% b = [-98:1:1]';
% x = A\b
% 
% b(100) = 1.00001;
% x = A\b
% 
% cond(A,"inf")

%Grafika
% x=[-1,1,2,4];
% y=[2,1,3,0];
% plot(x,y,'r*--')
% 
%Vonal
% x=linspace(-1,2);
% y=x.^3-x;
% plot(x,y)
% 
% fv = @(x) x.^3-x
% fv(2)
% 
% 
% x=linspace(-1,2);
% f=@(x) x.^3-x;
% figure; plot(x,f(x),'r--')
% axis([-1.2,2.2,-1,6.5]);
% legend('Az f fv')
% 
% %gca
% 
% x=linspace(-2,2);
% y=x.^2-1;
% z=2-abs(x);
% figure; plot(x,y,x,z)
% legend('x^2-1','2-|x|')
% ax=gca;
% ax.YAxisLocation='origin';
% ax.XAxisLocation='origin';

% 
% alfa=linspace(0,2*pi);
% figure;
% x = cos(alfa);
% y = sin(alfa);
% plot(x,y)
% ax=gca;
% ax.YAxisLocation='origin';
% ax.XAxisLocation='origin';
% axis equal;
% 
% 
% A = [1 0.7; 0.7 0.6];
% B = A*[x;y];
% hold on;
% plot(B(1,:), B(2,:));
% cond(A,"inf")
% 
% A = [1 0.8; 0.8 0.7];
% B = A*[x;y];
% hold on;
% plot(B(1,:), B(2,:));
% cond(A,"inf")
% 
% A = [1 0.9; 0.9 0.8];
% B = A*[x;y];
% hold on;
% plot(B(1,:), B(2,:));
% cond(A,"inf")


% t=[1 1.1 1.1:0.1:2];
% f=[8 8.9 9 9.8 10 11 11.5 11.5 12.5 13 13.7 14];
% 
% figure; plot(t,f,'*');
% 
% p = polyfit(t,f,1);
% hold on;
% refline(p)
% 
% z = linspace(1,2);
% fz = polyval(p,z);
% hold on;
% plot(fz,z)

%2.feladat
% t=[2.1 2.2 2.3 2.3 2.5 2.6 2.8 2.9];
% f=[2.5 2 2.5 2.7 3 4 5.4 7];
% plot(t,f,'*');
% p = polyfit(t,f,2);
% z = linspace(2.1,2.9)
% fz = polyval(p,z)
% hold on;
% plot(z,fz);

% %3.feladat
% t=0:2:12;
% f=[3 4 5 5.5 6.5 7 8];
% plot(t,f,'*')
% p = polyfit(t,f,1);
% refline(p);
% min20after = polyval(p,20)
% startmin = -(p(2)/p(1))
% full = 50-(p(2)/p(1))
% hold on;
% z = linspace(0,20);
% fz = polyval(p,z);
% hold on;
% plot(fz,z);

%fizetes
% format long;
% A = readtable("salary.xlsx");
% A = table2array(A);
% figure; plot(A(:,1),A(:,2),'*')
% % xlabel('ev');
% % ylabel('fizetes');
% p = polyfit(A(:,1), A(:,2),1)
% refline(p)
% z = linspace(min(A(:,1))-0.1,max(A(:,1))+0.1);
% hold on;

%japan súly
%A = readtable("japan_h_w_man.xlsx");
%A = table2array(A(:,[3,5]));
%plot(A(:,1), A(:,2), "*")
%hold on;
%p1 = polyfit(A(:,1), A(:,2),1);
%refline(p1)
%hold on;
%p2 = polyfit(A(:,1), A(:,2),2);
%z = linspace(min(A(:,1)), max(A(:,1)));
%fz = polyval(p2,z);
%hold on;
%plot(z,fz);

%y1 = polyval(p1, A(:,1));
%diff1 = mse(y1)

A = [1 2 3 4;5 6 7 8];
A_inv = pinv(A)

B = [-1 -1 1;4 2 4;3 1 5];
B_inv = pinv(B)

C = [-1 -1 1;4 2 4;-1 1 5];
C_inv = pinv(C)




