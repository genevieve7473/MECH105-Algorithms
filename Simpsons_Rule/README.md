## Simpson's 1/3 Rule
Numerically evaluates an integral by Simpson's 1/3 Rule 
- Inputs: 
  - x = a vector of equally spaced independent variables
  - y = a vector function values with respect to x
- Output: 
  - I = the numerical integral calculated

Format:\
[I] = Simpson(x,y)

Example: 
```
x = [2 4 6 8 10 12 14 16 18];
y = [23 21 20 18 22 26 21 19 24];
Simpson(x,y)

ans =

  339.3333
