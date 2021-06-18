# IA_Practica2
Practica 2, Inteligencia Artificial

## Problema #1

### Hechos

Los hechos son situaciones que estan planteadas desde un inicio en el problema, en el problema uno se utilizaron diferentes hechos, entre los cuales podemos encontrar:

1. Pareja
2. Hermano
3. Hermana
4. Padre
5. Madre
6. Hijo

#### 1. Pareja

El hecho pareja indica las distintas parejas que estan planteadas en el problema, como por ejemplo:

```sh
pareja(may,ben).
pareja(ben,may).
```

En las instrucciones anteriores se indica que May es pareja de Ben y que Ben es pareja de May.

#### 2. Hermano

El hecho hermano indica que la una persona es hermano de otra, por ejemplo:

```sh
hermano(lorenzo,sergio).
hermano(lorenzo,ezio).
```
En estos hechos indicamos que Lorenzo es hermano de Sergio y Enzio. 

#### 3. Hermana

El hecho hermana indica que la una persona es hermana de otra, por ejemplo:

```sh
hermana(mary,harry).
hermana(lois,clark).
```
En estos hechos indicamos que Mary es hermana de Harry y que Lois es hermana de Clark. 

#### 4. Padre

El hecho Padre indica que la una persona es el Padre de otra, por ejemplo:

```sh
padre(bruce,may).
padre(bruce,rachel).
```
En estos hechos indicamos que Bruce es padre de May y de Rachel. 

#### 5. Madre

El hecho Madre indica que la una persona es la Madre de otra, por ejemplo:

```sh
madre(martha,diana).
madre(martha,may).
```
En estos hechos indicamos que Martha es madre de May y de Diana.


#### 6. Hijo

El hecho Hijo indica que la una persona es Hija de otra, por ejemplo:

```sh
hijo(diana,martha).
hijo(may,martha).
```
En estos hechos indicamos que May y Diana son hijas de Martha.

#### Reglas Estandar con parametros

Para poder saber si una persona cumple alguno de estos hechos podemos utilizar variables las cuales nos indicaran si se cumple o no con un hecho en especifico.


|Hecho                     |Accion                                         |
| ------------------------ | --------------------------------------------- |
|Hijo(Persona1,Persona2)   |indica que Persona 1 es hijo de la persona 2   |
|Padre(Persona1,Persona2)  |indica que Persona 1 es padre de la persona 2  |
|Madre(Persona1,Persona2)  |indica que Persona 1 es madre de la persona 2  |
|Pareja(Persona1,Persona2) |indica que Persona 1 es pareja d e la persona 2|
|Hermano(Persona1,Persona2)|indica que Persona 1 es hermano de la persona 2|
|Hermana(Persona1,Persona2)|indica que Persona 1 es hermana de la persona 2|



### Reglas

Las reglas son condiciones que se tienen que cumplir en base a los hechos que se han presentado.  Estas condiciones se establecen con el fin de encontrar solucion al problema planteado. 

Entre las reglas planteadas para resolver este problema tenemos:

1. es_primo
2. es_tio
3. es_abuelo
4. tiene_hermana
5. es_culpable
6. hallar_culpable
7. Arbol genealogico 

#### 1. Es Primo

Esta regla se encarga de saber si una persona es primo/a de otra persona. Esta regla recibe 2 parametros los cuales son las 2 personas de las que se quiere saber si son primos, la estructura de la regla es la siguiete:

```sh
es_primo(Persona1, Persona2).
```

La regla consta de las siguientes instrucciones:


```sh
es_primo(Persona1,Persona2):-(padre(Persona3,Persona1),padre(Persona4,Persona2),hermano(Persona3,Persona4));
                             (padre(Persona3,Persona1),madre(Persona4,Persona2),hermano(Persona3,Persona4));
                             (madre(Persona3,Persona1),padre(Persona4,Persona2),hermana(Persona3,Persona4));
                             (madre(Persona3,Persona1),madre(Persona4,Persona2),hermana(Persona3,Persona4)).
```
Esta regla encuentra el padre o madre (Persona 3) de la persona 1 y compara si este es hermano o hermana de persona 2 (Persona 4).

#### 2. Es Tio

Esta regla se encarga de saber si una persona es tio/a de otra persona. Esta regla recibe 2 parametros los cuales son las 2 personas de las que se quiere saber si son una es tio/a de la otra, la estructura de la regla es la siguiete:

```sh
es_tio(Persona1, Persona2).
```

La regla consta de las siguientes instrucciones:


```sh
es_tio(Persona1,Persona2):-(hermano(Persona1,Persona3),padre(Persona3,Persona2));
                           (hermano(Persona1,Persona3),madre(Persona3,Persona2));
                           (hermana(Persona1,Persona3),padre(Persona3,Persona2));
                           (hermana(Persona1,Persona3),madre(Persona3,Persona2)).
```
Esta regla encarga de verificar si la persona 1 es hermano/a del padre o madre(Persona 3) de la persona 2.


#### 3. Es Abuelo

Esta regla se encarga de saber si una persona es abuelo de otra persona. Esta regla recibe 2 parametros los cuales son las 2 personas de las que se desea conocer la informacion, la estructura de la regla es la siguiete:

```sh
es_abuelo(Persona1, Persona2).
```

La regla consta de las siguientes instrucciones:


```sh
es_abuelo(Persona1,Persona2):-(padre(Persona1,Persona3),madre(Persona3,Persona2));
                              (padre(Persona1,Persona3),padre(Persona3,Persona2)).
```
Esta regla encarga de verificar si la persona 1 es padre del padre o madre (Persona 3) de la persona 2. 

#### 4. Tiene hermana

Esta regla se encarga de saber si una persona tiene o no alguna hermana. Esta regla recibe 1 parametro el cual es el nombre de la persona de la que se desea conocer la informacion, la estructura de la regla es la siguiete:

```sh
tiene_hermana(Persona1).
```

La regla consta de las siguientes instrucciones:


```sh
tiene_hermana(Persona1):-hermana(Persona2,Persona1).
```
Esta regla encarga de verificar si hay alguna hermana (Persona 2) de la persona 1. 

#### 5. Es culpable

Esta regla se encarga de saber si una persona es culpable o no. Esta regla recibe 1 parametro el cual es el nombre de la persona de la que se desea conocer la informacion, la estructura de la regla es la siguiete:

```sh
es_culpable(Persona1).
```

La regla consta de las siguientes instrucciones:


```sh
es_culpable(Persona1):-es_abuelo(bruce,Persona1),es_primo(clark,Persona1),es_tio(barry,Persona1),tiene_hermana(Persona1),
                      nl,write('-----------------------------'),nl,write('El culpable es: '+ Persona1),nl,write('-----------------------------').
```
Esta regla encarga de verificar si la persona 1 es culpable, preguntando los parametros dados en el enunciado del problema, eso quiere decir que es culpable si tiene un abuelo llamado bruce, si tiene un primo llamado clark, si tiene un tio llamado barry y si tiene alguna hermana.


#### 6. Hallar culpable

Esta regla se encarga de encontrar al culpable. Esta regla no recibe parametros, la estructura de la regla es la siguiete:

```sh
hallar_culpable().
```

La regla consta de las siguientes instrucciones:


```sh
hallar_culpable():-es_culpable(Persona1).
```
Esta regla devuelve el nombre del culpable basandose en los criterios establecidos en la regla es_culpable, imprimiendo al final el nombre del culpable

#### 7. Arbol genealogico

Esta regla se encarga de imprimir en pantalla el arbol genealogico de la familia obtenido en base a los hechos brindados. 

```sh
arbol().
```
El arbol genealogico es el siguiente:

![image](https://user-images.githubusercontent.com/37676214/122507666-d688f300-cfbd-11eb-96c4-5760fd354c3f.png)


## Problema #2

### Hechos

Los hechos son situaciones que estan planteadas desde un inicio en el problema o para en el caso del problema 2 habia que deducirlos para poder construir el arbol genealogico, entre los cuales podemos encontrar:

1. Pareja
2. Hermano
3. Padre
4. Madre
5. Hijo

#### 1. Pareja

El hecho pareja indica las distintas parejas que estan planteadas en el problema, como por ejemplo:

```sh
es_pareja(lamar,ana_lucia).
```

En las instrucciones anteriores se indica que lama es pareja de ana_lucia.

#### 2. Hermano

El hecho hermano indica que la una persona es hermano de otra, por ejemplo:

```sh
es_hermano(pedro,ruth).
```
En estos hechos indicamos que pedro es hermano de ruth. 

#### 3. Padre

El hecho Padre indica que la una persona es el Padre de otra, por ejemplo:

```sh
es_padre(lamar,pedro).
```
En estos hechos indicamos que lamar es padre de pedro. 

#### 4. Madre

El hecho Madre indica que la una persona es la Madre de otra, por ejemplo:

```sh
es_madre(ana_lucia,pedro).
```
En estos hechos indicamos que ana_lucia es madre de pedro.


#### 5. Hijo

El hecho Hijo indica que una persona es Hijo de otra persona, por ejemplo:

```sh
es_hijo(pedro,ana_lucia).
```
En estos hechos indicamos que pedro es hijo de ana_lucia.

#### Reglas Estandar con parametros

Para poder saber si una persona cumple alguno de estos hechos podemos utilizar variables las cuales nos indicaran si se cumple o no con un hecho en especifico.


|Hecho                        |Accion                                         |
| ------------------------    | --------------------------------------------- |
|es_hijo(Persona1,Persona2)   |indica que Persona 1 es hijo de la persona 2   |
|es_padre(Persona1,Persona2)  |indica que Persona 1 es padre de la persona 2  |
|es_madre(Persona1,Persona2)  |indica que Persona 1 es madre de la persona 2  |
|es_pareja(Persona1,Persona2) |indica que Persona 1 es pareja d e la persona 2|
|es_hermano(Persona1,Persona2)|indica que Persona 1 es hermano de la persona 2|


### Reglas

Las reglas son condiciones que se tienen que cumplir en base a los hechos que se han presentado.  Estas condiciones se establecen con el fin de corroborar los hechos analizado que generaron el arbol genealogico. 

Entre las reglas planteadas para resolver este problema tenemos:
1. es_cuniado
2. es_abuelo
3. es_abuela
4. es_tio
4. es_primo

#### Es cuniado

Esta regla se encarga de saber si una persona es cuñado/a de otra persona, la regla recibe 2 parametros:
```sh
es_cuniado(Var1,Var2).
```

La regla consta de las siguientes instrucciones:


```sh
es_cuniado(Var1,Var2):-(es_hermano(Var1,Var3);es_hermano(Var3,Var1)),(es_pareja(Var3,Var2);es_pareja(Var2,Var3)).
```
Esta regla encuentra si es hermano con alguna otra persona y que esta persona sea pareaja de alguno de los hermanos.

#### Es abuelo

Esta regla se encarga de saber si una persona es abuelo de otra persona, la regla recibe 2 parametros:
```sh
es_abuelo(Var1,Var2).
```

La regla consta de las siguientes instrucciones:


```sh
es_abuelo(Var1,Var2):-es_padre(Var1,Var3),(es_padre(Var3,Var2);es_madre(Var3,Var2)).
```
Esta regla encuentra si es padre, ya sea de la madre o del padre de la otra persona.

#### Es abuela

Esta regla se encarga de saber si una persona es abuela de otra persona, la regla recibe 2 parametros:
```sh
es_abuela(Var1,Var2).
```

La regla consta de las siguientes instrucciones:


```sh
es_abuela(Var1,Var2):-es_madre(Var1,Var3),(es_padre(Var3,Var2);es_madre(Var3,Var2)).
```
Esta regla encuentra si es madre, ya sea de la madre o del padre de la otra persona.

#### Es tio

Esta regla se encarga de saber si una persona es tio/a de otra persona, la regla recibe 2 parametros:
```sh
es_tio(Var1,Var2).
```

La regla consta de las siguientes instrucciones:


```sh
es_tio(Var1,Var2):-(es_hermano(Var1,Var3);es_hermano(Var3,Var1);es_cuniado(Var3,Var1)),(es_padre(Var3,Var2);es_madre(Var3,Var2)).
```
Esta regla encuentra si es hermano o cuñado de la persona que se asume como tio, y que ademas si la persona que resulta ser cuñado o hermano es padre o madre de la persona que se considera como sobrino.

#### Es primo

Esta regla se encarga de saber si una persona es primo/a de otra persona, la regla recibe 2 parametros:
```sh
es_primo(Var1,Var2).
```

La regla consta de las siguientes instrucciones:


```sh
es_primo(Var1,Var2):- es_hijo(Var1,Var3), es_tio(Var3,Var2).
```
Esta regla encuentra si es hijo de una tercera persona que se asume como tio y que ademas esta persona es tio de la otra persona, si se cumplen las dos condiciones entonces son primos.

### Arbol Genealogico Problema 2

![image](https://user-images.githubusercontent.com/37676214/122508460-4481ea00-cfbf-11eb-9cd8-75ac8ae22978.png)
