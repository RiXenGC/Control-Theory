function plotQuivers( t, z0, dzdt)
% Define the direction of phase lines and quiver near main line
% t - time of modeling
% z0 - (x1, x2) coordinates of base phase trajectory
% dzdt - system of differential equations

    hold on
    
    tspan = transpose(t);
    z = transpose(z0);
    
    for i = 1:size( tspan, 2 )
        for n = 1:5
            % Generate 5 random points around based coordinates
            v = z(:, i) + (rand( size(z,1), 1) - 0.5)./ 10;
            % Calculate dz/dt in this points
            u =  transpose( dzdt( tspan(i), v(:, 1) ) ) ./ 15;
            % Plotting
            quiver( v(1, 1), v(2, 1), u(1, 1), u(1, 2), 'k'); 
        end
    end
                      
    hold off

end