%########################2.feladat#################################
% %           natúr          kakós
% %túró       20             40           max = 280   20x1 + 40x2 <= 280
% %tejszín    50             20           max = 300   50x1 + 20x2 <= 300
% %kakó       0              2            max = 12    2x2 <= 12
% %profit     100            200                      x1,x2 >= 0
% %                                                   100x1 + 200x2 ->max
% %
% 
% c = [-100, -200];
% A = [20 40; 50 20; 0 2];
% b = [280; 300; 12];
% [xopt, fopt,~,~,lambda] = linprog(c,A,b,[],[],[0,0])
% b-A*xopt %miből maradt
% lambda.ineqlin %miből kell bővíteni, és mennyit hogy ne maradjon ki
% 
% 
%########################18.feladat#################################
% c = [-1 0 -2 5]
% %egyenlőtlenségek
% A = [1,2,1,0;
%     4, -1, 0, 1];
% b = [50; 60];
% 
% %egyenlőség
% Aeq = [0, 1, 0, 1;
%        0, 0, 1, 1];
% beq = [15;20];
% 
% [xopt,fopt,~,~,lambda] = linprog(c,A,b,Aeq,beq,[0,0,0,0])
% lambda.ineqlin
% lambda.eqlin
% [b;beq]-[A;Aeq]*xopt


%########################13.feladat#################################
%fordítva kell az összes előjelet mert minimumot kérdez
% c = [30, 40];
% A = [-0.2 0;
%      0 -0.2;
%      -0.1 -0.2;
%      -0.7 -0.6];
% b = [-0.2; -0.4; -1; -4.2];
% 
% [xopt, fopt] = linprog(c,A,b,[],[],[0,0])


%########################15.feladat#################################
%1.lépés kiegyensúlyozott e a feladat
%30+40+50-20-16-42-42 %igen ha 0, nem ha más mint 0

%1.módszer északnyugat módszer
%2.módszer legkisebb költség módszer
%3.módszer Vogel módszer

%1.módszer 160+20+24+112+40+378 = 734 költség
%2.módszer 32+56+80+40+140+18 = 366
%3.módszer 32+48+14+80+40+150 = 364


% 250+390+5*130+8*40+210+180
% 
% 14-8
% 8-5+8-5+2-3
% 15-10
% 7-8
% 6-5
% 10-10

%2000-(70*5-130*5+90*2)

%2*3+7*2+2*7+5*15+2*9+5*4+6*5+50



% x = linspace(4,5);
% f =@(x) sin(4*x)+cos(3*x);
% %plot(x,f(x))
% fzero(f,4.3)
% fzero(f,4.7)










