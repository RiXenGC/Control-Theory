clc;
clear all;
close all;

tic;                            % Start timer

v = [0.1, -0.1, 0.1];           % Starting position
TMAX = 100;        % Time of modeling for graphs

GAMMA = 0.1;                    % Parameters of equation
ALPHA = 0.05;

dxdt = @(t, x) model(t, x, ALPHA, GAMMA);

z = plotLocus(v, dxdt, TMAX);

H = Chaotic(20, 10, v, dxdt, TMAX, z);

toc;                            % Stop timer

%% Function of phase portrait to plot

function dxdt = model(t, x, ALPHA, GAMMA)
%   Rabinovich–Fabrikant equations

    dxdt(1,:) = x(2,:) .* ( x(3,:) - 1 + x(1,:).^2 ) + GAMMA .* x(1,:);
    dxdt(2,:) = x(1,:) .* (3 * x(3,:) + 1 - x(1,:).^2 ) + GAMMA .* x(2,:);
    dxdt(3,:) = -2 * x(3,:) .* ( ALPHA + x(1,:) .* x(2,:) );
    
end