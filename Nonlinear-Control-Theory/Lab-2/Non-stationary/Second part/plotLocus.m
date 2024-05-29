function [t,z] = plotLocus(v0, dxdt, tmax)
% Function that sketches a phase portrait of a dynamical system 

figure;
hold on;
xlabel('x1');
ylabel('x2');
tspan = [0, tmax]; % Time of modeling

[t, z] = ode23t(dxdt, tspan, v0, ...
     odeset('RelTol',1e-3));        % Solver parametrs

plot( z(:, 1), z(:, 2), 'g', linewidth= 3)

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
set(gca, 'XTick',-100:100)
set(gca, 'YTick',-100:100)
    
hold off
end