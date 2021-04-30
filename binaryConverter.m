function [base2] = binaryConverter(base10)
% binary A simple function to convert a base10 number to binary
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary

% input of 0 returns 0
if base10 == 0
    base2 = [0]
end

% determine number of arguments is only the base10 input
if nargin ~= 1
    error('must only input one value');
end

% x is an array that gets larger as the exponent increases
% n is the exponent number that will continue to increase after each loop
x = 0;
n = 0;

if base10 > 0
    while 2^n <= base10
        x = x + 1;
        n = n + 1;
    end
    num = 0:n-1;                            % array from 0 to n
    N = 2.^num;                             % array of 2^num
    base2val = fliplr(N);                   % flipping matrix so it reads left to right
    base2 = zeros(1,n)                      % empty matrix to fill later
    
    for i = 1:(n-1)
        if base2val(i) > base10
            base2(i) = 0;
        else
            base10 = base10 - base2val(i);
            base2(i) = 1;
        end
    end
    if rem(base10, 2) ~= 0                  % if base10 is odd, last value in array is 1
        base2(n) = 1;
    end
    base2 = [base2]
end
end