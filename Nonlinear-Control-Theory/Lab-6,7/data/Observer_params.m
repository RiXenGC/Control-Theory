clc;

%% Observer parameters
% First of all, define Observer gain L 
% Will be use a pole placement method
% 1. Setup state space model
Observer_parameters.setup.sys = ss(State_space.A, State_space.B, ...
    State_space.C, State_space.D);

% 2. Search poles of the Observed system (define eigenvalues
% of the system).
Observer_parameters.setup.observed = pole(Observer_parameters.setup.sys);

% 3. Define Observers poles [A-L*C]
% For this we can use two approaches:
% A - Linearizetion in point to the n derivative
% B - Random (expirence and black magic)
% We choose second one :)
Observer_parameters.setup.a = 5;
Observer_parameters.setup.b = 5;
Observer_parameters.setup.polo = Observer_parameters.setup.a * ...
    real(Observer_parameters.setup.observed) + ...
    imag(Observer_parameters.setup.observed) / Observer_parameters.setup.b * 1i;

% 4. Calculate feedback vector (Observer gain) L
Observer_parameters.L = acker(State_space.A', State_space.C', ...
    Observer_parameters.setup.polo).';