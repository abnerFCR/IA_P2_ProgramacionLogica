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


## Problema #2
