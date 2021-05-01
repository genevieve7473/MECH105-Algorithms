## False Position Root Finding Method

Finds the root of a function using the false position method
- Inputs: 
    - func = function
    - xl = lower bounds
    - xu = upper bounds
    - es = stopping criterien
    - maxit = maximum iterations
    - varargin = other information
- Ouputs: 
    - root = root of the function
    - fx = f(x) value
    - ea = approximate error
    - iter = number of iterations

Format:\
[root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)

Example:
```
func = @(x) 8*x.^3 + 12*x.^2 - x + 4;
falsePosition(func, 0, 10, 0.01, 100)

ans =

   -1.7332
```


