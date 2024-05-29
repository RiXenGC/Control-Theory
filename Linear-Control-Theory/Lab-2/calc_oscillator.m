function [t, z, te, ze] = calc_oscillator(z0, t0, dzdt)

    t = [t0, t0 + 100];
    zero_y = @(t, z) event_zero_v(t,z);
    opt = odeset('Events', zero_y, "MaxStep",1e-4);
    [t, z, te, ze] = ode45(dzdt, t, z0, opt);

end 


function [value, isterminal, direction] = event_zero_v(t, z) 

    value = (abs(z(2,1)) < 1e-2) && (z(4,1) < 0);
    isterminal = 1;
    direction = 0;

end