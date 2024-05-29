
function [] = plot_oscillator(t, z)

%%%%%%%%%%%%%%Coordinates%%%%%%%%%%%%%%%%
figure('Name','x(t) plot');
plot(t, z(:,1),"DisplayName","x(t)"); 
xlabel("t, m");
ylabel("x, m");
title("Coordinates of oscillator");
legend;
grid on;

%%%%%%%%%%%%%%%Velocity%%%%%%%%%%%%%%%%%
figure('Name','v(t) plot');
plot(t, z(:,2),"DisplayName","v(t)"); 
xlabel("t, m");
ylabel("v, m");
title("Velocity of oscillator");
legend;
grid on;

%%%%%%%%%%%%Coordinates(left) + Velocity(right)%%%%%%%%
figure('Name','Coordinates and velocities');
subplot(1,2,1);
hold on;

plot(t, z(:,1),"DisplayName","x(t)","LineStyle","-.");
xlabel("time, s");
ylabel("meters");
title("Coordinates");
grid on;
legend;

%%%%%
subplot(1,2,2);
hold on;

plot(t, z(:,2),"DisplayName","v(t)","Color","black");
xlabel("time, s");
ylabel("m/s");
title("Velocities");
grid on;
legend;

hold off;

%%%%%%%%%%%%Coordinates(top) + Velocity(down)%%%%%%%%
figure('Name','Coordinates and velocities');
subplot(2,1,1);
hold on;

plot(t, z(:,1),"DisplayName","x(t)","LineStyle","-.");
xlabel("time, s");
ylabel("meters");
title("Coordinates");
grid on;
legend;

%%%%%
subplot(2,1,2);
hold on;

plot(t, z(:,2),"DisplayName","v(t)","Color","black");
xlabel("time, s");
ylabel("m/s");
title("Velocities");
grid on;
legend;

%%%%%%%%%%%%%%%Velocity-distance%%%%%%%%%%%%%%%%%
figure('Name','v(x) plot');
plot(z(:,1), z(:,2),"DisplayName","v(x)"); 
xlabel("x, m");
ylabel("v, m");
title("Velocity-distance of oscillator");
legend;
grid on;

end