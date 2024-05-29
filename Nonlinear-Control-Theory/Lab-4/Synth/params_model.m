clear all;
clc;

%% Linear part
k_l = 30;
T_1 = 0.1;
T_2 = 0.1;

%% PID parameters 
k_p = 0.467049831227445;
k_i = 0.451462915126038;
k_d = 0.0879387159613378;
N = 1523.77063472214;

%% Compensator formula
s = tf('s');
Ts = 0.0001;

Compensator_formula = k_p + k_i * ( 1 / s ) +...
    + k_d * N / ( 1 + N * ( 1 / s ) );

RegulatorDiscreteFunc = c2d(Compensator_formula, Ts, 'zoh');