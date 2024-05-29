function plotLocus(v0, dxdt, tmax)
% Function that sketches a phase portrait of a dynamical system 

    figure("Name","Rabinovich–Fabrikant");
    hold on;
    title('Rabinovich–Fabrikant equations')
    xlabel('x');
    ylabel('y');
    zlabel('z');
    colororder(["#8040E6";"#1AA640";"#E68000"]);
    tspan = [0, tmax]; % Time of modeling
  
    [~, z] = ode23t(dxdt, tspan, v0, odeset('RelTol',1e-3));    % Solver parametrs
    plot3( z(:, 1), z(:, 2), z(:, 3));                     % Plotting

    hold off
end