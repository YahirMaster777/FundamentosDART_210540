void main() {
  // 1.- Llamando a una función sin parámetros
  greetEveryone();

  // 2.- Llamando a una función que retorna valores
  // a) Almacenando el dato en una variable
  print("El día de hoy es: ${getDayNumber()} del mes");
  
  // b) Almacenando el valor de la función en una nueva variable
  final int diaMes = getDayNumber();
  print("En tres días será ${diaMes + 3}");

  // 3.- Llamando a una función con un solo parámetro obligatorio
  // Llamando correcto
  print(greetSomeone("Marvin"));
  
  // b) En el caso de que la función esté declarada con dynamic
  print(greetSomeone(4));
  print(greetSomeone(-254));
  print(greetSomeone(3.1416));
  print(greetSomeone(true));

  // c) Mismo experimento pero ahora con la función con parámetros tipados
  // print(greetSomeoneTyped("Marvin"));
  // print(greetSomeoneTyped(4));
  // print(greetSomeoneTyped(-254));
  // print(greetSomeoneTyped(3.1416));
  // print(greetSomeoneTyped(true));

  // print(greetSomeone()); // No se puede ejecutar porque requiere un parámetro

  // Impresión del saludo 
  print(greetHourOfDay("Juan", null)); // Saludo basado en la hora actual
  print(greetHourOfDay("Ana", 6)); // "Buenos Días, Ana!"

  // 5.- Funciones lambda
  var calculaCosto = (double productQuantity, double productPrice, double percentageDiscount) => 
      (productQuantity * productPrice) * (1 - percentageDiscount / 100);

  double cantidadProducto = 5;
  double precioProducto = 125.50;
  double descuento = 2.5;

  print("""
  ----------------Funciones Lambda---------------------------
Costo: $precioProducto
Cantidad: $cantidadProducto
Descuento: $descuento

-------------------------------------------
Costo del Carrito de Compras: ${calculaCosto(cantidadProducto, precioProducto, descuento)}
""");
}

//------------------------------------------------- Funciones y parámetros -------------------------------------------------
// Declaración
void greetEveryone() {
  print("Hola a todos :)");
}

// Función que retorna datos 
int getDayNumber() {
  DateTime now = DateTime.now();
  int day = now.day;
  return day;
}

String greetSomeone(dynamic personName) {
  return "Hola, ${personName}";
}

String greetSomeoneTyped(String personName) {
  return "Hola, ${personName}";
}

// 4.- Función con parámetros opcionales 
String greetHourOfDay(String personName, int? hora) {
  hora ??= DateTime.now().hour; // Si hora es nulo, se usa la hora actual
  print("Hora: ${hora}");
  String saludo;

  if (hora >= 6 && hora < 12) {
    saludo = "Buenos Días, $personName!";
  } else if (hora >= 12 && hora < 18) {
    saludo = "Buenas Tardes, $personName!";
  } else {
    saludo = "Buenas Noches, $personName!";
  }

  return saludo; // Asegúrate de devolver el saludo
}
