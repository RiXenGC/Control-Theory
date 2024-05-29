function plotQuiver(x1, x2, dx)
% Define the direction of phase lines

hold on
z = dx(1, [reshape(x1,1,[]); reshape(x2,1,[])]);
dx1 = z(1,:);
dx2 = z(2,:);
dx1 = reshape(dx1,size(x1,1),size(x1,2));
dx2 = reshape(dx2,size(x2,1),size(x2,2));
quiver(x1, x2, dx1, dx2, 'k'); % Plotting
hold off

end