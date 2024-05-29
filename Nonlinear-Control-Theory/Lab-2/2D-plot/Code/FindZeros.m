clc;
options = optimoptions('fsolve','Display','none');

[z, fval] = fsolve(@FuncWithDegeneratePoints, [-1, -1], options); % Search zeros of function

Out = ['x1 = ', num2str( z(1,1) ), '; x2 = ', num2str( z(1,2) )];
disp(Out) % Output to command window

%% User functions
function f = model( x )
%   Searching zeros of system with non-linear equations

    f(1) = x(2);
    f(2) = x(2) + x(1)^2 - 5 * sin( 0.3 * x(1)^2);

end

function dxdt = FuncWithDegeneratePoints( x )
%   Define function with degenerate points

    dxdt(1) = x(2);
    dxdt(2) = sin( x(1) ) .* x(2) + log( 1 + x(1) .^ 2);

end