% x=[-2, -1, 0, 2];
% f=[-5, 3, 1, 15];
% p=polyfit(x,f,3);
% xx=linspace(-2.5,2.5);
% yy=polyval(p,xx);
% figure; plot(x,f,'*',xx,yy)


%1.feladat
% 
% x = linspace(0, 1); 
% y = exp(x) - sin(pi*x); 
% p = polyfit(x, y, 2);
% x_fine = linspace(0, 1); 
% y_fine = exp(x_fine) - sin(pi*x_fine);
% y_fit = polyval(p, x_fine); 
% figure;
% plot(x_fine, y_fine, 'LineWidth', 2); hold on; 
% plot(x_fine, y_fit, 'LineWidth', 2); 
% legend('Eredeti függvény', 'Illesztett polinom');
% xlabel('x'); ylabel('f(x)');
% title('Másodfokú polinom illesztése');
% grid on;


%2.feladat
% Időpontok és elmozdulások
% t = [2; 4; 5]; 
% s = [16; 38; 52]; 
% 
% % Egyenletrendszer felírása: A * [s0; v0; a] = b
% A = [1, t(1), 0.5*t(1)^2;
%      1, t(2), 0.5*t(2)^2;
%      1, t(3), 0.5*t(3)^2];
% 
% b = s;
% 
% % Egyenletrendszer megoldása
% x = A \ b; % s0, v0, a kiszámítása
% 
% % Eredmények kiírása
% s0 = x(1);
% v0 = x(2);
% a = x(3);
% 
% fprintf('s0 = %.2f m\n', s0);
% fprintf('v0 = %.2f m/s\n', v0);
% fprintf('a = %.2f m/s^2\n', a);

% s = @(t) s0 +v0*t + a/2*t^2
% 
% x = [2 4 5];
% f = [16 38 45];
% p = polyfit(x,f,2);
% xx = linspace(0,5);
% yy = polyval(p,x);
% figure; plot(x,f,'*',xx,yy)

%3.feladat
% 
% f = @(x) 1./(1+25*x.^2)
% xx = linspace(-1,1);
% figure; plot(xx,f(xx))
% hold on; axis([-1,1,-1,2])
% startn = 11;
% for n = 3:2:11
%     x = linspace(-1,1,n);
%     p = polyfit(x,f(x), n-1);
%     yy = polyval(p, xx);
%     plot(xx,yy); title(['n=', num2str(n)])
%     pause(1)
% end

% xc = cos((2.*[1:11]-1)./22*pi);
% p = polyfit(xc, f(xc), 10);
% yy3 = polyval(p3, xx);
% plot(xx, yy3);
% legend('o','f','cs')
% 
%5.feladat
% T = diff_table([-2,-1,0,2],[-5,3,1,15])
% 
% function T = diff_table(x,f)
%     n = length(x);
%     T = zeros(n,n+1);
%     T(:,1:2) = [x(:),f(:)];
%     for k = 1:n-1
%         T(k+1:n, k+2) = (T(k+1:n,k+1)-T(k:n-1 ,k+1))./(T(k+1:n,1)-T(1:(n-k),1));
%     end
% end

% %6.feladat
% x = [1,2,4];
% y = [2.3957,2.4280,1.4027];
% p = polyfit(x,y,2)
% roots(p)
% 
% 
% function p=fun(xa)
%     f=@(x) cos(pi.*x).^2 +exp(x);
%     p  = polyfit(xa, f(xa), lenght(xa)-1);
% end
% 
% 
% function y=fun(x)
%     x1 = [-1 0 1 2 3];
%     y1 = [-2 -1.5 0 2 1];
%     p = polyfit(x1,y1,4);
%     y = polyval(p,x)
% end


figure; plot([0,1],[0,1],'b','LineWidth',2); hold on
plot([2,3],[2,2],'b','LineWidth',2)
grid on
axis equal
xx = linspace(1,2);
yy = xx-(xx-1).^2.*(xx-2)
plot(xx,yy,'r','LineWidth',2)



