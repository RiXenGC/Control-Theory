clear all;

%Function
y = @(x) x.^2 - 2 .* x + exp(-x);

syms x
g = diff( y(x) );
dydx = @(x) vpa( subs(g, x), 5 );

%Initial conditions
x_interval = 0.5:0.05:2;
x_k = 1.8;
y_k = y (x_k);

%Plotting
figure('Name','Function');
%axis([0.5 2 -1 1]);
hold on;

xlabel("x");
ylabel("y(x)");
title("Gradient descent");
grid on;

plot(x_interval, y(x_interval),"DisplayName","y(x)", "Color","black");

%Gradient descent
alpha = 0.5;
Epsilon = 0.01;
i = 0;

while  ( abs( dydx( x_k ) ) > Epsilon ) && ( i < 100 )
    h = -alpha * dydx( x_k );
    plot([x_k, x_k+h],[y_k, y(x_k + h)],"r") 
    x_k = x_k + h;
    y_k = y(x_k);
    i = i+1;
    pause(1);
end

iterations = i
x_last = round(x_k, 5)
y_last = round(y_k, 5)
