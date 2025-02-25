% %gép számítás diasor 10.feladat
% x = 1;
% %1 a megoldás
% %for i=1:40
% %    (exp(x)-1)/x
% %    x = x/2;
% %end
% %0 a megoldás
% %for i=1:200
% %    (exp(x)-1)/x
% %    x = x/2;
% %end
% %NaN a megoldás
% %for i=1:2000
% %    (exp(x)-1)/x
% %    x = x/2;
% %end
% %exp(x) tart az 1 hez egy időután eléri a 0 át, Nan akkor lehet amikor a külömbség
% % szinte nem is érzékelhető és akkor már olyan mintha 0/0 lenne
% 
% x1 = [-1 4 ];
% y1 = [3 -2 5];
% z = x1 + y1'
% 
% A =[1 2 3 4;
%     5 6 7 8;
%     9 10 11 12]
% %2.feladat
% B=A;
% B(:,[2,4]) = []
% 
% 
% 
% %4.feladat
% B= [A,A]
% 
% %6.feladat
% B=A;
% B(:,[2,4]) = B(:,[4,2])
% 
% %7.feladat
% B = A.^2
% 
% %8.feladat
% B = A+3
% 
% %10
% B = -A
% 
% %3.feladat
% A = [1:8; 20:-2:6; 2.^(1:8)];
% 
% 
% %szorgalmi
% A = zeros(500);
% A(101:400,101:400)= 1;
% %imshow(A);
% 
% %2.szorgalmi
% C= zeros(500);
% C(101:400,101:400) = 0.5;
% C(201:300,201:300) = 1;
% %imshow(C);

%1.fealdat
% A =[2 -3 1 1;-1 3 4 7];
% b =[0;5];
% x = A\b
% rref([A b])

% %2.feladat
% A =[1 0 0 1;1 1 0 0; 0 0 1 1; 0 1 1 0];
% B = [1500; 1200;1300;1000];
% %x = A\B
% rref([A B])
% null(A) %ezzel az értékkelnövelhetem akárhányszor az elemet
% %megoldás
% %x1 = max(1200)
% %x1 = min(200)


% %több jobboldali vektor
% A=rand(10000);
% b=ones(10000,1);
% c=zeros(10000,1);
% tic;x=A\[b,c];toc
% tic;x=A\b; x2=A\c; toc

% %ritka mátrix
% A=[-1.1 0 0 2; 0 0 2 0; 0 -1 0 1;0 0 0 3]
% S = sparse(A) %hol vannak a nem nulla elemek
% spy(S) %diagram hol vannak a nem nulla elemek
% 
% d=ones(10000,10000);
% S=spdiags([d d -4*d d d],[-4000 -1000 0 1000 4000],10000,10000);
% % spy(S);
% F=full(S);
% whos S F
% 
% x=rand(10000,1);
% clear b
% tic;b=S*x;toc
% clear b 
% tic;b=F*x;toc

%7.feladat
A=pascal(10)
x=ones(10,1)
b=A*x
A\b

format long;
A=pascal(10)
x=ones(10,1)
b=A*x
A\b

A=pascal(10);
L = chol(A, 'lower')
y = L\b
x = L'\y





