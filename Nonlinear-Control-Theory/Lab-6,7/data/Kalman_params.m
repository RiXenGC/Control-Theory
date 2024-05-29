clc;

%% Parameters of noise

Kalman_parameters.Ts = 0.01;
Kalman_parameters.Noise_power_input = 0.05;
Kalman_parameters.Noise_power_output = 5;
Kalman_parameters.seed_input = 12357;
Kalman_parameters.seed_output = 73745;

%% Kalman parameters 

Kalman_parameters.sys = ss (State_space.A, State_space.B, ...
    State_space.C, State_space.D);

Kalman_parameters.Q = 1;
Kalman_parameters.R = 1;
Kalman_parameters.N = 0;

[Kalman_parameters.kalmf, Kalman_parameters.L, Kalman_parameters.P] = ... 
    kalman(Kalman_parameters.sys, Kalman_parameters.Q, ...
    Kalman_parameters.R, Kalman_parameters.N);