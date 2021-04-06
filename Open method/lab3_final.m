clc

%--------------Report Question Ans No.01(starts)----------------%
t1 = linspace(0,0.1,100);
f =@(t) t.*(1-exp(-10.*t)) -0.05;
figure('Name','Report Ans No.01 Plot','NumberTitle','off')
plot(t1,f(t1))
grid on
xlabel('t');
ylabel('f(t)');
title('Plot of f(t) from t=0 to\tau');
%--------------Ans No.01 END-------------------------------------%
%--------------Report Question Ans No.02(starts)-----------------%
t(1) = 0.08;%t(i-1)
t(2) = 0.1;%t(i)
n = 7;

for i = 1:n
    t(i+2) = t(i+1) - (f(t(i+1))*(t(i)-t(i+1)))/(f(t(i))-f(t(i+1)));
    error(i) = abs((t(i+2) - t(i+1))/t(i+2))*100 ;  

end
%---------------Ans No.02 END-----------------------------------%
%---------------Report Question No.03(starts)-------------------%
%3.a)
fprintf('Solution After 7 iteration = %.4f\n',t(7));
%3.c)
fprintf('Relative Error After 7 Iteration = %.20f\n',error(7));
%---------------Ans No.03 END-----------------------------------%
%---------------Report Question No.04(starts)-------------------%
n_new=12;
for i_n = 1:n_new
    t_new(i_n+2) = t(i_n+1) - (f(t(i_n+1))*(t(i_n)-t(i_n+1)))/(f(t(i_n))-f(t(i_n+1)));
    error_new(i_n) = abs((t(i_n+2) - t(i_n+1))/t(i_n+2))*100;  

end
i_n = -1:n_new;
%4.a)
figure(2)
plot(i_n,t_new)
grid on
title('i-th solution (ti) vs iteration (i)')
xlabel('iteration (i)')
ylabel('i-th solution (ti)')
i_new = 0:12;
%4.b)
figure(3)
plot(i_new,error_new)
grid on
title('Apparent error vs. Iteration')
xlabel('Iteration')
ylabel('Apperent error')
%% Answere to the question no. 4.c
% NaN represent the scalar representation of 'not a number'
% the have identified numeric result, such as 0/0 or 0*inf.

%---------------Ans No.04 END-----------------------------------%
%% 




