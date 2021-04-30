function [L, U, P] = luFactor(A)

% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%   P = the permutation matrix

% checking matrix parameters
B = A;
[a b] = size(B);
if a ~= b
    error('input matrix must have equal rows and columns');
end

% creating an initial pivot matrix
P = eye(length(B));

% define starting values
i = 1;                            % initial value for column number
k = 1;                            % initial value for eliminating a value
h = 0;                            % initial value for switching rows

% creating loop to keep eliminating rows to create upper traingle
for iter = 1:length(B)-1
    p = eye(length(B));               % empty pivot matrix 
    r = 1;                            % initial value for finding which row 1 is in
    X = B(i:a,i);
    X = abs(X);
    x = X > max(X) - 1;               % finding max val in logical matrix
    
    % for loop that finds row with max value for pivoting
    for column_i = 1:length(B)
        if x(r) == 1;
            break
        else
            r = r + 1;
        end
    end
    
    % loop that switches rows that could cause dividing by 0
    if r ~= 1
        x = [i, r+h];
        P(x,:) = P(x([2,1]),:);
        p(x,:) = p(x([2,1]),:);
        B = p*B;
    end
    
    % eliminating rows with a loop
    for row_i = 1:length(B)-i
        C = B(k+1,i)/B(i,i);
        B(k+1,:) = B(k+1,:) - C*B(i,:);
        k = k + 1;
    end

    i = i + 1;
    k = i;
    h = h + 1;
end

U = B;

% finding L
L = eye(length(B));

A = P*A;

for l = 1:length(B)
    for m = 1:l-1
        L(l,m) = A(l,m);
        for n = 1:m-1
            L(l,m) = L(l,m) - L(l,n)*U(n,m);
        end
        L(l,m) = L(l,m)/U(m,m);
    end
end

display(U);
display(L);
display(P);