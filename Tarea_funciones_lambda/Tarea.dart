void main() {
  // Ejemplo 1: Suma de tres números solo si todos son positivos
  var sumaCondicional = (int x, int y, int z) => (x > 0 && y > 0 && z > 0) ? x + y + z : 0;
  var resultadoSuma = sumaCondicional(5, -3, 7);
  print('Suma condicional de 5, -3, y 7: $resultadoSuma');  
  // Salida: 0

  // Ejemplo 2: Elevar al cubo si el número es impar, al cuadrado si es par
  var potencia = (int x) => (x % 2 != 0) ? x * x * x : x * x;
  var resultadoPotencia = potencia(4);
  print('Resultado de elevar 4: $resultadoPotencia');  
  // Salida: 16

  // Ejemplo 3: Filtrar números pares y multiplicarlos por 3
  var numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  var paresMultiplicados = numeros.where((x) => x % 2 == 0).map((x) => x * 3).toList();
  print('Números pares multiplicados por 3: $paresMultiplicados');  
  // Salida: [6, 12, 18, 24, 30]
}
