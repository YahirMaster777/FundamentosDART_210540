void main() {
  final mySquare = Square(side: 18);

  // Mostrar el lado y el área usando la propiedad pública y el método           correspondiente.
  print("""
  Lado del Cuadrado: ${mySquare.side}
  Área que ocupa: ${mySquare.calculateArea()}""");
  
  mySquare.side = -32;
  
}
class Square {
  double _side; // Variable privada para almacenar el valor del lado del cuadrado.
  Square({required double side})
      : _side = side;
  double get area {
    return _side * _side;
  }

  // Getter para acceder al valor del lado de manera segura.
  double get side {
    return _side;
  }

  // Setter para asignar un nuevo valor al lado, con validación.
  set side(double value) {
    print("Asignando un nuevo valor al lado: $value");
    if (value < 0) throw 'El valor del lado debe ser mayor a 0.';
    _side = value;
  }

  // Método para calcular el área usando el valor del lado.
  double calculateArea() {
    return _side * _side;
  }
}