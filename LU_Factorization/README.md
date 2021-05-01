## LU Factorization with Pivoting

Creates 3 matricies using LU decomposition with pivoting
- Input
  - A = a coefficient matrix
- Outputs
  - L = a lower triangular matrix
  - U = an upper triangular matrix
  - P = a permuation matrix

Format:\
[L, U, P] = luFactor(A)

Example:
```
A = [3 7 2 6 8; 4 7 9 3 2; 2 4 6 2 4; 2 2 4 7 8; 8 9 4 4 7];
luFactor(A)

U =

    8.0000    9.0000    4.0000    4.0000    7.0000
         0    3.6250    0.5000    4.5000    5.3750
         0         0    6.6552   -2.1034   -5.2069
         0         0         0    7.2694    8.9948
         0         0         0         0    2.9679


L =

    1.0000         0         0         0         0
    0.3750    1.0000         0         0         0
    0.5000    0.6897    1.0000         0         0
    0.2500   -0.0690    0.4560    1.0000         0
    0.2500    0.4828    0.7150    0.0456    1.0000


P =

     0     0     0     0     1
     1     0     0     0     0
     0     1     0     0     0
     0     0     0     1     0
     0     0     1     0     0


ans =

    1.0000         0         0         0         0
    0.3750    1.0000         0         0         0
    0.5000    0.6897    1.0000         0         0
    0.2500   -0.0690    0.4560    1.0000         0
    0.2500    0.4828    0.7150    0.0456    1.0000
```
