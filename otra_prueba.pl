%Hechos
%Hijo(Persona1,Persona2)     indica que Persona 1 es hijo de la persona 2
%Padre(Persona1,Persona2)    indica que Persona 1 es padre de la persona 2
%Madre(Persona1,Persona2)    indica que Persona 1 es madre de la persona 2
%Pareja(Persona1,Persona2)   indica que Persona 1 es pareja d e la persona 2
%Hermano(Persona1,Persona2)  indica que Persona 1 es hermano de la persona 2
%Hermana(Persona1,Persona2)  indica que Persona 1 es hermana de la persona 2

%La suma de los hijos de martha + los nietos es de 9, 
%hijos de martha 4
%nietos de martha 5
%barry es cu;ado de enrique
%El culpable tiene una hermano o hermano
%El hermano del culpable tiene un abuelo que se llama Bruce, un tio que se llama barry, un primo que se llama clark  (el culpable tambien tiene lo mismo)
%Pepper es esposa de uno de los hijos de martha
%martha tiene 4 hijos
%martha tiene 9 nietos

%INFORMACION DE MARTHA
pareja(bruce,martha).
pareja(martha,bruce).

madre(martha,diana).
madre(martha,may).
madre(martha,rachel).
madre(martha,barry).

hijo(diana,martha).
hijo(may,martha).
hijo(rachel,martha).
hijo(barry,martha).

hijo(diana,bruce).
hijo(may,bruce).
hijo(rachel,bruce).
hijo(barry,bruce).

%hijos de martha

hermano(barry,diana).
hermano(barry,may).
hermano(barry,rachel).

hermana(rachel,diana).
hermana(rachel,may).
hermana(rachel,barry).

hermana(diana,rachel).
hermana(diana,may).
hermana(diana,barry).

hermana(may,rachel).
hermana(may,diana).
hermana(may,barry).

%ezio, lorenzo y sergio son hermanos

hermano(lorenzo,sergio).
hermano(lorenzo,ezio).
hermano(sergio,lorenzo).
hermano(sergio,ezio).
hermano(ezio,lorenzo).
hermano(ezio,sergio).

%Diana, estaba junto a su esposo Peter y sus 2 hijos, Mary y Harry.    YA ESTAN LAS RELACIONES COMPLETAS DE DIANA 
pareja(diana,peter).
pareja(peter,diana).

hijo(diana,mary).
hijo(peter,mary).

hijo(diana,harry).
hijo(peter,harry).

hermano(harry,mary).
hermana(mary,harry).

madre(diana,harry).
madre(diana,mary).
padre(peter,harry).
padre(peter,mary).

%May estaba llorando con su esposo Ben mientras vigilaba a sus hijos   COMPLETA MAY
pareja(may,ben).
pareja(ben,may).

hijo(clark,ben).
hijo(clark,may).

hijo(lois,ben).
hijo(lois,may).

madre(may,clark).
madre(may,lois).
padre(ben,clark).
padre(ben,lois).

hermana(lois,clark).
hermano(clark,lois).

%Barry y pepper       COMPLETA
pareja(barry,pepper).
pareja(pepper,barry).

hijo(tony,barry).
hijo(tony,pepper).
madre(pepper,tony).
padre(barry,tony).

hijo(lara,pepper).
hijo(lara,barry).
madre(pepper,lara).
padre(barry,lara).

hermana(lara,tony).
hermano(tony,lara).

%rachel y enrique COMPLETO
pareja(rachel,enrique).
pareja(enrique,rachel).

madre(rachel,enzio).
madre(rachel,lorenzo).
madre(rachel,sergio).

padre(enrique,enzio).
padre(enrique,lorenzo).
padre(enrique,sergio).

hijo(enzio,rachel).
hijo(lorenzo,rachel).
hijo(sergio,rachel).

hijo(enzio,enrique).
hijo(lorenzo,enrique).
hijo(sergio,enrique).


%Reglas

es_primo(Persona1,Persona2):-(hermano(padre(Persona3,Persona1),padre(Persona4,Persona2)));.


%bruce y martha 
[may y ben (vigilaba que sus hijos se comportaran)],  [diana y peter hijos(mary y harry)],  [X y pepper (hijo tony)], [Y, enrique] 


%bruce y martha si deducimos los datos que no estan
[may y ben (lois y clark)],  [diana y peter hijos(mary y harry)],  [barry y pepper (tony, lara)], [rachel, enrique (enzio, lorenzo y sergio)] 

