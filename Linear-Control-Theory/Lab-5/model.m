clear all
close all
clc 

% Input values
A = 0.1;
R = 0.9;
Jv = 0.006;
i = 12;
rv = 0.02;
mk = 0.1;
T = 8;
g = 9.81;
pi = 3.1415;

% Test
Test_R = A/2 * R;

%% Pen

j = 5000; % Количество итераций
t = linspace(0, T, j)'; % Вектор-столбец со значениями времени от 0 до T с шагом T/j
t(j+1) = T + T/j;
t(j+2) = T + 2 * T/j;

% Функции кривой, скорости и ускорения
%s = -2/T^3 .* t.^3 + 3/T^2 .* t.^2;
s = - 6/(5*T^5) .* t.^5 - 3/(5*T^4) .* t.^4 + 14/(5*T^3) .* t.^3;

x = Test_R * cos(2*pi * s);
y = Test_R * sin(2*pi * s);
%c = 0.1;
%x = ( c * sqrt(2) * cos(2*pi*s) ) ./ ( 1 + sin(2*pi*s).^2 );
%y = ( c * ( sin(2*pi*s) .* cos(2*pi*s) ) ) ./ ( 1 + sin(2*pi*s).^2 );

for i=1:(j+1)
 x_dot(i, 1) = ( x(i+1) - x(i) ) / ( T / j );
 y_dot(i, 1) = ( y(i+1) - y(i) ) / ( T / j );
end

for i=1:(j)
 x_ddot(i, 1) = ( x_dot(i+1) - x_dot(i) ) / ( T / j );
 y_ddot(i, 1) = ( y_dot(i+1) - y_dot(i) ) / ( T / j );
end

% Вектора координат точек графика функции, а также скорости и ускорения в них
K = [ x(1:j, 1), y(1:j, 1) ];
v = [ x_dot(1:j, 1), y_dot(1:j, 1) ];
a = [ x_ddot, y_ddot ];


%% Torque

% Значение моментов в точках 
M = Jv*2*pi/i .* a;
M_x = [ t(1:j,1), M(:,1) ];
M_y = [ t(1:j,1), M(:,2) ];

% Значения угловых ускорений винта для каждой точки
E = M ./ Jv;

% Значения угловых скоростей винта для каждой точки
w = 2*pi/i .* v;

% Значение мощности на валах
P = abs( M .* w );


%% Plot 

%%%%%%%%%%%% Ox %%%%%%%%%%%%
figure('Name','Ось Ох');

subplot(2,2,1);
hold on;
plot(t(1:j,1), M(:,1),"DisplayName","M_x(t)", "Color","red");
xlabel("time, s");
ylabel("Ox torque, N*mm");
title("Torque diagramm");
grid on;
legend;

subplot(2,2,2);
hold on;
plot(t(1:j,1), w(:,1),"DisplayName","w(t)","Color","black");
xlabel("time, s");
ylabel("Ox angular velocity,mm/s");
title("Velocities diagramm");
grid on;
legend;

subplot(2,2,3);
hold on;
plot(t(1:j,1), E(:,1),"DisplayName","E(t)","Color","blue");
xlabel("time, s");
ylabel("Ox angular acceleration,mm/s^2");
title("Acceleration diagramm");
grid on;
legend;

subplot(2,2,4);
hold on;
plot(t(1:j,1), P(:,1),"DisplayName","P(t)","Color","green");
xlabel("time, s");
ylabel("Required Power, W");
title("Power diagramm");
grid on;
legend;


%%%%%%%%%%%% Oy %%%%%%%%%%%%
figure('Name','Ось Оy');

subplot(2,2,1);
hold on;
plot(t(1:j,1), M(:,2),"DisplayName","M(t)", "Color","red");
xlabel("time, s");
ylabel("Oy torque, N*mm");
title("Torque diagramm");
grid on;
legend;

subplot(2,2,2);
hold on;
plot(t(1:j,1), w(:,2),"DisplayName","w(t)","Color","black");
xlabel("time, s");
ylabel("Oy angular velocity,mm/s");
title("Velocities diagramm");
grid on;
legend;

subplot(2,2,3);
hold on;
plot(t(1:j,1), E(:,2),"DisplayName","E(t)","Color","blue");
xlabel("time, s");
ylabel("Oy angular acceleration,mm/s^2");
title("Acceleration diagramm");
grid on;
legend;

subplot(2,2,4);
hold on;
plot(t(1:j,1), P(:,2),"DisplayName","P(t)","Color","green");
xlabel("time, s");
ylabel("Required Power, W");
title("Power diagramm");
grid on;
legend;


%%%%%%%%%%%%%%%%%%%%
figure('Name','Начальные условия (координаты)');
hold on;
plot(t(1:j,1), K(:,2))
grid on;

figure('Name','Начальные условия (линейная скорость)');
hold on;
plot(t(1:j,1), v(:,2))
grid on;

figure('Name','Начальные условия (угловая скорость)');
hold on;
plot(t(1:j,1), w(:,2))
grid on;