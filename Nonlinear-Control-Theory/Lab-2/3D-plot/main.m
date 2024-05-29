clc;
clear all;
close all;

tic;                        % Start timer

v = [-0.5; -0; 0.5];       % Starting position
GAMMA = 0.2;               % Parameters of equation
ALPHA = 0.6;

TMAX = 50;                 % Time of modeling  

dxdt = @(t, x) model(t, x, ALPHA, GAMMA);

plotLocus(v, dxdt, TMAX); % Plot portrait

toc;                        % Stop timer

%% Function of phase portrait to plot

function dxdt = model(t, x, ALPHA, GAMMA)
%   Rabinovich–Fabrikant equations

    dxdt(1,:) = x(2,:) .* ( x(3,:) - 1 + x(1,:).^2 ) + GAMMA .* x(1,:);
    dxdt(2,:) = x(1,:) .* (3 * x(3,:) + 1 - x(1,:).^2 ) + GAMMA .* x(2,:);
    dxdt(3,:) = -2 * x(3,:) .* ( ALPHA + x(1,:) .* x(2,:) );

end