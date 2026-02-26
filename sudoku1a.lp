% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

{sudoku(X,Y,N) : N = 1..4} = 1 :- X = 1..4, Y = 1..4.
% Generate board

:- initial(X1,Y1,N1), sudoku(X2,Y2,N2), X1 == X2, Y1 == Y2, N1 != N2.
% Follow initial requirements

:- sudoku(X,Y1,N1), sudoku(X,Y2,N2), Y1 != Y2, N1 == N2.
% Rows cannot have the same number

:- sudoku(X1,Y,N1), sudoku(X2,Y,N2), X1 != X2, N1 == N2.
% Columns cannot have the same number

#show sudoku/3.
