clear all;
clc;

%% Nonlinear part
Nonlinear_part.c = 36;
Nonlinear_part.k = 1;

%% Linear part
Linear_part.k_l = 30;
Linear_part.T_1 = 0.1;
Linear_part.T_2 = 0.1;

%% State space
State_space.A = [0 1 0
    0 0 1
    0 -100 -20];
State_space.B = [0
    0
    3000];
State_space.C = [1 0 0];
State_space.D = 0;