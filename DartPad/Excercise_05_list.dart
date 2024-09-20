void main() {
  //List

  //la declaracion de variables de un list esta limitada por corchetes, y cada elemento puede repertirse y registrarse
  final numbers = [1, 2, 2, 2, 3, 4, 5, 6, 7, 7, 7, 7, 8, 8, 9, 10];
  print("Ejemplo de list :$numbers");
  print(
      "confirmamos el tipo de dato para numbers que es : ${numbers.runtimeType}");
  print("Podemos acceder a cierta informacion de una lista tal como:");
  print("El tamaño: ${numbers.length}");
  print("""
    Para acceder a los elementos debemos especificar la posicion entre []
    el primer elemento de la primera posicion es: ${numbers[0]}
    El elemento en la segunda posicion es ${numbers[1]}, respetando la posicion -1
    El ultimo elemento de la lista es: ${numbers[numbers.length - 1]}

    ---------------------------------------------------------------------------

    De igual manera existen las siguientes alternativas 
    Primer elemento ${numbers.first}
    Ultimo elemento ${numbers.last}
    ---------------------------------------------------------------------------
    Tambien tendremos acceso a algunos metodoso que permiten la transformacion o filtrado de contenido 

   Por ejemplo: usar reversed , para invetir el orden original : ${numbers.reversed}

  Es importante observar que la funcion reversed transforma el list a un ITERABLE

  """);

//Iterables
  final numbersReversed = numbers.reversed;

  print(
      "Los iterables son estructuras de datos Dart y otros lenguajes para optimizar el proceso en terminos de velocidad el acceso a los datos y propiedades");
  print("Ejemplo de un iterable. $numbersReversed");
  print(
      "confirmamos el tipo de dato para numbers que es : ${numbersReversed.runtimeType}");
  print(
      "De igual manera podemos transformar una lista en iterable y viceversa");
  print(
      "Convertimos el iterable a lista usando .tolList(): ${numbersReversed.toList()} y verificamos su tipo de dato ${numbersReversed.toList().runtimeType}");
//conjunto de datos
  print("""
Veamos que pasa con los conjuntos convertimos el iterable a un set : ${numbersReversed.toSet()}
podemos vizualizar en el resultado que el set a eliminado a los duplicados y ahora delimita los datos usando {}.
""");

//de igual manera pode utilizar  con el filtro de elemento s usando .where()
  final numbersMayores = numbers.where((num) {
    return num > 5;
  });

  print("Estos son lo numeros filtrados de list con .where() mayores a 5: ${numbersMayores}");
  print("Eliminamos duplicados ... : ${numbersMayores.toSet()}");
}
