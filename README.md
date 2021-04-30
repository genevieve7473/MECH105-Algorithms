# MECH105-Algorithms
Algorithms created for MECH 105: Numerical Methods

# Algorithms Included
- Binary Converter
  - Converts a base 10 number into a base 2 number
    - Input: base10 = number in base 10
    - Output: base2 = number in base 2
- False Position 
  - Finds the root of a function using the false position method
    - Inputs: func = function
    -          xl = lower bouds
    -          xu = upper bounds
    -          ea = stopping criterien
    -          maxit = maximum iterations
    -          varargin = other information
    - Ouputs: root = root of function
              fx = f(x) value
              ea = approximate error
              iter = number of iterations
- LU Factorization
  - Creates 3 matricies using LU decomposition with pivoting
    - Input: A = a coefficient matrix
    - Outputs: L = a lower trianguar matrix
               U = an upper triangular matrix
               P = a permuation matrix
- Simpson's 1/3 Rule
  - Numerically evaluates an integral by Simpson's 1/3 Rule 
    - Inputs: x = the vector of equally spaced independent variables
              y = the vector of function values with respect to x
    - Output: I = the numerical integral calculated
