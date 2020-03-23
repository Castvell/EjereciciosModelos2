:- use_module(library(clpfd)).
:- ['pistas.pl'].

resolver(Fila):- problem(Fila,Lts),futoshiki(Fila,Lts)
        ,maplist(portray_clause,Fila).

cargarPist(Fila):-
	cargarPistas(Fila),
        cargarPistas2(Fila),
	transpose(Fila,Col),
        cargarPistas3(Col),
        transpose(Col,Fila).

futoshiki(Fila,Lts):-
	length(Fila,9),maplist(same_length(Fila),Fila),
	append(Fila,Vs),Vs ins 1..9,
	cargarPist(Fila),
        unequals(Fila, Lts),
	maplist(all_distinct,Fila),
	transpose(Fila,Col),
	maplist(all_distinct,Col),
        Fila = [As,Bs,Cs,Ds,Es,Fs,Gs,Hs,Is],
        bloques(As,Bs,Cs),
        bloques(Ds,Es,Fs),
        bloques(Gs,Hs,Is),
        label(Vs).

bloques([],[],[]).
bloques([N1,N2,N3|Ns1], [N4,N5,N6|Ns2], [N7,N8,N9|Ns3]) :-
        all_distinct([N1,N2,N3,N4,N5,N6,N7,N8,N9]),
        bloques(Ns1, Ns2, Ns3).

celda([I, J],Fila,Col) :-
        nth1(I,Fila,Filas),
        nth1(J,Filas,Col).

cargarPistas(Fila):-findall(P,(pista(F,C,V),P=cel(F,C,V)),Pistas)
    ,cargar(Pistas,Fila).

cargar([],_).
cargar([cel(F,C,V)|Elemento2],Fila):-
        celda([F,C],Fila,V),
        cargar(Elemento2,Fila).

cargarPistas2(Fila):-findall(P,(pistaH(F,C1,'<',C2),P=[F,C1,F,C2]),Pp)
,findall(J,(pistaH(F,C1,'>',C2),J=[F,C2,F,C1]),Pj)
,append(Pp,Pj,Pfinal)
,callunequals(Fila,Pfinal).

cargarPistas3(Col):-findall(K,(pistaV(C,F1,'<',F2),K=[C,F1,C,F2]),Pk)
,findall(L,(pistaV(C,F1,'>',F2),L=[C,F2,C,F1]),Pl)
,append(Pk,Pl,Pfinal),callunequals(Col,Pfinal).

callunequals(_,[]).
callunequals(Fila,[Inicio|Resto]):- unequal(Fila,Inicio)
,callunequals(Fila,Resto).

unequal(Fila, [I1,J1,I2,J2]) :-
        celda([I1,J1], Fila, C1),
        celda([I2,J2], Fila, C2),
        C1 #< C2.

unequals(Fila, Lts) :-
        maplist(unequal(Fila), Lts).

problem([[_,_,_,_,_,_,_,_,_],
         [_,_,_,_,_,_,_,_,_],
         [_,_,_,_,_,_,_,_,_],
         [_,_,_,_,_,_,_,_,_],
         [_,_,_,_,_,_,_,_,_],
         [_,_,_,_,_,_,_,_,_],
         [_,_,_,_,_,_,_,_,_],
         [_,_,_,_,_,_,_,_,_],
         [_,_,_,_,_,_,_,_,_]],
         []).





