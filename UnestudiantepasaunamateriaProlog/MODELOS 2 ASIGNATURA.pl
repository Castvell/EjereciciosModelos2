%Luis Miguel Castellanos Alvarado 20162020084

%Esta parte es la cantidad de clases que se ve por
%materia y el nombre de la materia
clasesmateria(20,modelos2).

%Los estudiantes que estan inscritos en la materia
estainscrito(modelos2,luis).
estainscrito(modelos2,edwin).
estainscrito(modelos2,juan).

%Las notas de cada corte de un materia repectiva
%de un estuadiante
corte1(29,modelos2,luis).
corte2(30,modelos2,luis).
corte3(33,modelos2,luis).

%La cantidad de fallas que tiene un estudiante
%en una materia
fallas(6,luis,modelos2).

%Se saca la nota de cada uno de los cortes, se
%saca el porcentaje de cada una, se suman las 3 y
%al final se compara que la definitiva sea >= 30
%para saber si paso o no
definitiva(M,E):-corte1(N1,M,E),
    corte2(N2,M,E),
    corte3(N3,M,E),
    +((*(N1,0.35)),+((*(N2,0.35)),(*(N3,0.3))))>=30.

%La asistencia se halla comparando que el numero de
%fallas no supere al 30% del numero de clases de la materia
asistencia(M,E):-fallas(NUM,E,M),
    clasesmateria(NUMTOTAL,M),
    NUM=<(*(NUMTOTAL,0.3)).

%La consulta final evalua que el estudiante E este incrito
%en la materia M, que la definitiva sea >=30 y que la
%asistencia sea minimo del 70%
estudianteEpasamateriaM(E,M):-inscrito(M,E),
    definitiva(M,E),
    asistencia(M,E).
