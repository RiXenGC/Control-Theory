clc;

%% LQR parameters

LQR_parameters.Q = 5 * State_space.C' * State_space.C;
LQR_parameters.R = 1;

%% Check conrollabillity of system

LQR_parameters.Co = rank( ctrb(State_space.A, State_space.B) );

if LQR_parameters.Co < rank(State_space.A)
   error('ERROR! System dont have controllability')
end

%% Calculate K parameter for LQR controller

[LQR_parameters.K, ~, ~] = lqr(State_space.A, State_space.B, LQR_parameters.Q, LQR_parameters.R);

%% State space of new close-loop model with LQR controller 
% new_sys = ss(A-B*K, B, C, D);
% step(new_sys)