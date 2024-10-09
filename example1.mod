var x1 >= 0 binary;
var x2 >= 0 integer;

maximize z: 300*x1 + 200*x2;

s.t. M1: 2*x1+x2 <= 8;
s.t. M2: x1+2*x2 <= 8;