function [value, isterminal, direction] = outOfBounds(t, z, xymax) 
% Func for detect out from zone

value = (abs(z(1,1)) > xymax) || (abs(z(2,1)) > xymax); % condition
isterminal = 1; % Stop simulation

% direction --- параметр, отвечающий за направление перескока через
direction = 0; % --- параметр, который нам не интересен, но необходим

end