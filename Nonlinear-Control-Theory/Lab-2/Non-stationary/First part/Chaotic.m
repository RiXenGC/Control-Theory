function H = Chaotic( n, int, v0, dxdt, TMAX, z0)
% CHAOTIC in search chaotic parameters of system with 
% differential equations 
%% Input
% n - order of convergent sequence ( d = { 1/10^1, 1/10^2 ... 1/10^n } )
% int - quantity of points around start point ( we will be
% calculate other phase trajectories based on this points)
% v0 - initial point
% dxdt - system of differential equations;
% TMAX - ending time
% z0 - (x1, x2, x3) coordinates of initial phase trajectory
%% Output
% H - massiv with maximal distances between starting phase trajectory
% and secondary trajectory on the delta-sphere
    
    tspan = [0, TMAX];              % Time of modeling
    
    seq = eye(n,1);                                  
    for i = 1:n
        seq(i,1) = 1/10^(i-1);      % Generate convergent
        % sequence delta^n
    end

    H = eye(1, n);
    for i = 1:n

        ro = 0;                     % Maximal distance on delta sphere

        %Works in sphrecil coordinates system
        theta = transpose( linspace(0, 2 * pi, int) );  % Angle
        phi = transpose( linspace(0, 2 * pi, int) );
        % 0x coordinates on the delta-sphere
        x_resh = v0(1,1) + seq(i,1) .* sin(theta) .* cos(phi);  
        % 0y coordinates on the delta-sphere
        y_resh = v0(1,2) + seq(i,1) .* sin(theta) .* sin(phi);
        % 0z coordinates on the delta-sphere
        z_resh = v0(1,3) + seq(i,1) .* cos(theta);
        
        %Reference points (mas of intermediate initial values)
        refPoints = [ x_resh, y_resh, z_resh ];
        
        for j = 1:size(refPoints, 2)
            [~, z] = ode23t(dxdt, tspan, refPoints(j,:), ...
                odeset('RelTol',1e-3));

            % RangeBetweenPoints( x1, x2 ) - calculating 
            % distance between points of x1 and x2 massive with coordinates
            % dist - maximal range between starting trajectory
            % and intermediate trajectory
            dist = max( RangeBetweenPoints( z, z0 ) );

            % Search max range on the delta-sphere
            if dist > ro
                ro = dist;
            end
        end
        
        H(1, i) = ro;

    end
end

