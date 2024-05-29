clc;
clear all;
close all;

tic;                       % Start timer

v0 = [0, 0];               % Initial conditions 1
TMAX = 5;                  % Time of modeling
 
dxdt = @(t, x) funnySinus(t, x);

[modTime, x] = plotLocus(v0, dxdt, TMAX); % Plot phase portrait
%plotQuivers( modTime, x, dxdt ); % Plot direction

H = Chaotic ( 10, 50, v0, dxdt, TMAX, x);

toc;                        % Stop timer

%% Function of phase portrait to plot

function dxdt = opposingImpulse(t, x)
%   Define opposing impulse function
    
    if mod( round( t - 0.5 ) , 2) == 0 || t == 0
            dxdt(1,:) = x(2,:);
            dxdt(2,:) = 1 - x(2,:) - x(1,:);
    else
            dxdt(1,:) = x(2,:);
            dxdt(2,:) = -1 - x(2,:) - x(1,:);
    end

end

function dxdt = opposingLines(t, x)
%   Define opposing linear lines function

    if mod( round( t - 0.5 ) , 2) == 0 || t == 0
        dxdt(1,:) = x(2,:);
        dxdt(2,:) = t - x(2,:) - x(1,:);
    else
        dxdt(1,:) = x(2,:);
        dxdt(2,:) = -t - x(2,:) - x(1,:);
    end
end

function dxdt = funnySinus(t, x)
%   Define funnySinus function

    dxdt(1,:) = x(2,:);
    dxdt(2,:) = sin( 1/( t+10^(-7) ) ) - x(2,:) - x(1,:);

end