/* 
Guerra civil en espania 1936-1939
Segunda gerra mundia   1939-1945 
Juan carlos fue proclamado rey de espania 1975 
Ultima constitucion esapaniola 1978
Se establece euro como monea de Europa 2002
*/
% Hechos

es_hijo(pedro,lamar).
es_hijo(pedro,ana_lucia).
es_hijo(ruth,lamar).
es_hijo(ruth,ana_lucia).

es_hijo(jonas,pedro).
es_hijo(jonas,diana).

es_hijo(daniel,jonas).
es_hijo(daniel,soledad).
es_hijo(constancia,jonas).
es_hijo(constancia,soledad).

es_hijo(manuel,feliciano).
es_hijo(manuel,ruth).
es_hijo(ines,feliciano).
es_hijo(ines,ruth).

es_padre(lamar,pedro).
es_padre(lamar,ruth).
es_padre(pedro,jonas).
es_padre(jonas,daniel).
es_padre(feliciano,manuel).
es_padre(jonas,constancia).
es_padre(feliciano,ines).

es_madre(ana_lucia,pedro).
es_madre(ana_lucia,ruth).
es_madre(diana,jonas).
es_madre(soledad,daniel).
es_madre(soledad,constancia).
es_madre(ruth,manuel).
es_madre(ruth,ines).

es_pareja(lamar,ana_lucia).
es_pareja(pedro,diana).
es_pareja(jonas,soledad).
es_pareja(feliciano,ruth).

es_hermano(pedro,ruth).
es_hermano(daniel,constancia).
es_hermano(manuel,ines).

% cuniados
es_cuniado(Var1,Var2):-(es_hermano(Var1,Var3);es_hermano(Var3,Var1)),(es_pareja(Var3,Var2);es_pareja(Var2,Var3)).

% abuelos
es_abuelo(Var1,Var2):-es_padre(Var1,Var3),(es_padre(Var3,Var2);es_madre(Var3,Var2)).
es_abuela(Var1,Var2):-es_madre(Var1,Var3),(es_padre(Var3,Var2);es_madre(Var3,Var2)).

% Tios
es_tio(Var1,Var2):-(es_hermano(Var1,Var3);es_hermano(Var3,Var1);es_cuniado(Var3,Var1)),(es_padre(Var3,Var2);es_madre(Var3,Var2)).

% Primos
es_primo(Var1,Var2):- es_hijo(Var1,Var3), es_tio(Var3,Var2).

% Dibujar Arbol
arbol():-nl,write('*************************************************************'),nl,nl,
         write('                           Lamar + Ana Lucia                    '),nl,
         write('                                 |                              '),nl,
         write('              -----------------------------------               '),nl,
         write('              |                                 |               '),nl,
         write('    Diana + Pedro                             Ruth + Feliciano  '),nl,
         write('          |                                        |            '),nl,
         write('        Jonas + Soledad               ----------------------    '),nl,
         write('              |                       |                    |    '),nl,
         write('    ---------------------            Ines                Manuel '),nl,
         write('    |                   |                                       '),nl,
         write('  Daniel            Constancia                                  '),nl,
         nl,nl,write('**********************************************************'),nl,nl.