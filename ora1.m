x=rand(1,1000000);

y=zeros(1,100000);

tic;
for i=1:1000000
    y(i)=x(i)+1;
end
toc

tic;
y = x+1;
toc


x1 = 1/3;
for i=1:40
    x1 = 4*x1-1;
end
x1

e = 2;

while 1+e>1
    e=e/2;
end
2*e;
e

e1 = 2;

while e1>0
    e2=e1;
    e1=e1/2;
end
2*e1;
e2

x3=100;
for i=1:60
    x3=sqrt(x3);
end
x3
