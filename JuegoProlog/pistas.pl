%Pistas numericas: fila, columna, valor
pista(1,3,4).
pista(1,4,2).
pista(1,5,7).
pista(1,7,1).
pista(2,2,7).
pista(2,5,8).
pista(2,6,5).
pista(2,8,4).
pista(2,9,6).
pista(3,2,2).
pista(3,9,3).
pista(4,1,2).
pista(4,3,3).
pista(4,4,6).
pista(4,6,8).
pista(5,1,7).
pista(5,4,4).
pista(5,7,9).
pista(5,8,6).
pista(6,5,5).
pista(6,6,2).
pista(6,7,3).
pista(6,8,1).
pista(7,1,8).
pista(8,5,4).
pista(8,8,2).
pista(9,1,4).
pista(9,3,2).
pista(9,4,9).
pista(9,5,1).
pista(9,6,6).

% Pistas verticales: en la columna C el valor que se encuentra en la
% fila F1 es mayor o menor al valor de la fila F2 (C,F1,'>',F2)
pistaV(2,3,'>',4).
pistaV(2,4,'<',5).
pistaV(3,6,'>',7).
pistaV(4,1,'<',2).
pistaV(4,2,'>',3).
pistaV(4,5,'<',6).
pistaV(4,8,'<',9).
pistaV(6,4,'>',5).
pistaV(6,5,'<',6).
pistaV(6,8,'<',9).
pistaV(7,1,'<',2).
pistaV(7,8,'<',9).
pistaV(8,8,'<',9).
pistaV(9,1,'<',2).
pistaV(9,3,'<',4).
pistaV(9,5,'<',6).

% Pistas horizontales: En la fila F, el valor de la columna C1 es mayor
% o menor al de C2 (F,C1,'>',C2)
pistaH(1,5,'<',6).
pistaH(1,7,'<',8).
pistaH(2,7,'<',8).
pistaH(4,4,'<',5).
pistaH(4,6,'>',7).
pistaH(5,1,'<',2).
pistaH(5,3,'>',4).
pistaH(6,1,'>',2).
pistaH(6,7,'>',8).
pistaH(7,1,'<',2).
pistaH(7,2,'>',3).
pistaH(8,1,'<',2).
pistaH(8,2,'<',3).
pistaH(8,5,'>',6).
pistaH(8,7,'>',8).
pistaH(9,2,'>',3).
pistaH(9,4,'>',5).
