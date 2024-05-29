clc;
clear all;
close all;

tic;                        % Start timer

x_p = -2.3;                   % x coordinate of specific point
y_p = 0;                   % y coordinate of specific point

x_p_right = x_p + 2;       % Left coordinate on Ox of mesh
x_p_left = x_p - 2;        % Right coordinate on Ox of mesh
y_p_top = y_p + 2;       % Top coordinate on Oy of mesh
y_p_bottom = y_p - 2;        % Bottom coordinate on Oy of mesh

MAX = 4;                  % Size of graph
STEP = 0.1;                % Step of mesh
TMAX = 10;                 % Time of modeling 


x_mas = x_p_left:STEP:x_p_right;
y_mas = y_p_bottom:STEP:y_p_top;
[x1, x2] = meshgrid(x_mas, y_mas);  

dxdt = @(t, x) model(t, x);
event_out_of_bounds = @(t, z) outOfBounds(t, z, MAX+0.01, MAX+0.01);

plotLocus(x1, x2, dxdt, event_out_of_bounds, TMAX); % Plot phase portrait
plotQuiver(x1, x2, dxdt); % Plot direction

toc;                        % Stop timer

%% Function of phase portrait to plot

function dxdt = model(t, x)
%   Define the nonlinear, continious-time, state-space model
%   t is the time;
%   x it the vector of state coordinates

    dxdt(1,:) = x(2,:);
    dxdt(2,:) = x(2,:) + x(1,:).^2 - 5 .* sin( 0.3 * x(1,:).^2);

end