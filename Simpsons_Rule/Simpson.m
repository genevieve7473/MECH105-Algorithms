function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

% error check inputs are the same length
[a b] = size(x);
[c d] = size(y);
spaces = b-1;
if b ~= d
    error('inputs must have the same dimensions');
end

% error check that x inputs are equally spaced
n = 2;
for spaces = 1:b-1
    X = x(n) - x(n-1);
    change(n,:) = X;
    n = n+1;
end

change = change(2:b,:);
equal = change(1);
for check_iter = 1:b-1
    check = isequal(equal, change(c));
    c = c + 1;
end
if check == 0
    error('x inputs must be equally spaced');
end

% warning about trap rule
if rem(spaces,2) ~= 0
    warning('the number of spaces is odd or one, the trap rule will be used');
end

h = (x(b)-x(a))/spaces;
k = 1;
if rem(spaces,2) ~= 0
    spaces = round(spaces) - 1;
    i_trap = trapz(y(b-1:b));
else rem(spaces,2) == 0
    i_trap = 0;
end 

if spaces == 1 || spaces == 0
    I = i_trap;
else 
    for iter = 1:spaces/2
        I_section = y(k) + 4*y(k+1) + y(k+2);
        I_pieces(k,:) = I_section;
        k = k + 2;
    end
    I = i_trap + ((h/3)*(sum(I_pieces)));
end 

