void main() {
  final mySquare = Square(side: -10); // Crea un cuadrado con un lado de 10
  print("""El lado del cuadrado es de : ${mySquare._side}
  su área es de: ${mySquare.area}""");
  // Intenta establecer un lado negativo
  mySquare.side = -5; // Esto lanzará un error

  // Muestra los valores después de intentar cambiar el lado
  print("""El lado del cuadrado es de : ${mySquare._side}
  su área es de: ${mySquare.area}""");

  final mySquare2 = Square(side: -7);
  print(""" el lado del cuadrado es de: ${mySquare2._side}
  su area es de: ${mySquare.area}a
  """);
}

class Square {
  double _side; // Variable privada que representa el lado del cuadrado

  // Constructor que requiere un lado mayor a 0
  Square({required double side})
      : assert(side > 0, 'El valor del lado debe ser mayor a 0'), // Validación
        _side = side;

  // Getter que calcula y devuelve el área del cuadrado
  double get area {
    return _side * _side;
  }

  // Setter para modificar el lado del cuadrado
  set side(double value) {
    print('setting new value $value');
    if (value < 0)
      throw 'Value must be >=0'; // Lanza un error si el valor es negativo

    _side = value; // Asigna el nuevo valor
  }

  // Método para calcular el área del cuadrado
  double calculateArea() {
    return _side * _side;
  }
}
