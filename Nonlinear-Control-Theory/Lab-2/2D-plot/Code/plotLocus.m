function plotLocus(x1, x2, dxdt, event_fnc, tmax)
% Function that sketches a phase portrait of a dynamical system 

figure;
hold on;
xlabel('x1');
ylabel('x2');
tspan = [0, tmax]; % Time of modeling

    for i = x1(1, :)
        for j = transpose(x2(:, 1))
            x0 = [i; j];  
            [~, z, ~, ~, ~] = ode23t(dxdt, tspan, x0, ...
                odeset('RelTol',1e-3,'Events', event_fnc)); % Solver parametrs
            plot(z(:, 1), z(:, 2), 'g'); % Plotting
        end
    end

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
box off
set(gca, 'XTick',-100:100)
set(gca, 'YTick',-100:100)
    
hold off
end