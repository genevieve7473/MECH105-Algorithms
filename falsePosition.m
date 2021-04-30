function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
% falsePosition finds the root of a function using false position method
% input [func, xl, xu, es, maxit, varargin]
% output [root, fx, ea, iter]

% false position function is used to find the root of a function f(x) using
% an upper and lower bound that is given as xl and xu as well as an
% equation to find the root with an acceptable error given es

% determine accpetable number of input arguments
if nargin == 3
    maxit = 200;
    es = 0.0001;
    varargin = 0;
elseif nargin == 4
    maxit = 200;
    varargin = 0;
elseif nargin == 5
    varargin = 0;
else nargin < 3;
    error('must have inputs for at least func, xl, and xu');
end

% establishing initial iteration and ea
ea = 100;
i = 1;
xr = 0;

while ea > es
    xr_old = xr;
    f_xl = func(xl);
    f_xu = func(xu);
    xr = xu - ((f_xu*(xl-xu))/(f_xl-f_xu));
    f_xr = func(xr);
    ea = (abs((xr - xr_old)/xr))*100;
    
    if f_xl*f_xr < 0
        xu = xr;
    else f_xu*f_xr < 0
        xl = xr;
    end
    
end

% putting everything in a matrix [root, fx, ea, iter]
root = xr;
fx = f_xr;
iter = i;
ea = ea;
A = [root, fx, ea, iter];
disp(A);

end
