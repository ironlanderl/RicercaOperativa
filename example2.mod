param n;
param m;

set J := {1..n}; # decisioni
set I := {1..m}; # constraints

param C {J} >= 0;
param A {I, J} >= 0;
param B {I} >= 0;

var X {J} >= 0; # decision

minimize z: sum {j in J} C[j] * X[j];

s.t. Constraint {i in I}:
	sum {j in J} A[i,j] * X[j] >= B[i];