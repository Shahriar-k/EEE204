clc

x = [0 1 2 3 4 5];
y = [2.1 7.7 13.6 27.2 40.9 61.1];
n = numel(x);

x_s = sum(x);
y_s = sum(y);
x2_s = sum(x.^2);
x3_s = sum(x.^3);
x4_s = sum(x.^4);

XiYi_s = sum(x.*y);
X2Y2_s = sum(x.^2.*y);

%A = [a0; a1; a2];
B = [n x_s x2_s; x_s x2_s x3_s; x2_s x3_s x4_s];
C = [y_s; XiYi_s; X2Y2_s];

A = inv(B)*C;

y_model = A(1)+A(2)*x+A(3).*x.^2;

figure(1)
plot(x,y,'*')
hold on
plot(x,y_model)
grid on
xlabel('x')
ylabel('Ymodel,Y')

