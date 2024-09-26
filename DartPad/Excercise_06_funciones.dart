void main() {
  // 1. Saludar a todos
  greetEveryone();

  // 2. Obtener el número del día actual
  int numeroDia = getDayNumber();
  print("Hoy es el día número $numeroDia");
  print("En 3 días estaremos a: ${numeroDia + 3}");

  // 3. Saludar a alguien con diferentes tipos de datos
  print(greetSomeone("Marvin"));
  print("----------------------------------Impresion de tipos de datos----------------------------------");
  // 3.1 Probar greetSomeone con varios tipos
  print(greetSomeone(45));           // No recomendado, mostrará comportamiento dinámico
  print(greetSomeone(-15));          // No recomendado, mostrará comportamiento dinámico
  print(greetSomeone(3.141516));     // No recomendado, mostrará comportamiento dinámico
  print(greetSomeone(true));         // No recomendado, mostrará comportamiento dinámico

  // 3.2 Saludar a alguien con tipo comprobado
  print(greetSomeoneTyped("Marvin Yair"));
  print("----------------------------------Saludo con hora----------------------------------");

  // 4. Saludar a alguien con el parámetro de hora
  print(greetSomeoneHourOfDay("Yair", 21));
  print(greetSomeoneHourOfDay("Juan")); // Usa la hora actual por defecto
  print(greetSomeoneHourOfDay("Arturin"));
  print("----------------------------------Funcion lambda para calcular descuentos----------------------------------");

  // 5. Función lambda para calcular el costo total
  var calculaTotalCarrito = (double cantidad, double precio, double descuento) =>
      (cantidad * precio) * ((100 - descuento) / 100);

  double cantidad = 3.180;
  double precio = 1725.10;
  double descuento = 8;

  print("""
Costo del Producto: $precio
Cantidad solicitada: $cantidad
Descuento definido: $descuento
-----------------------------------------------------------
Costo Total:  ${calculaTotalCarrito(cantidad, precio, descuento)}""");

  // 6. Función con parámetros nombrados
  print(infoCarListStatus(buyerName: "Yair"));

  // 6.1 Parámetros nombrados en cualquier orden
  print(infoCarListStatus(
      status: "En espera de pago",
      amountCarList: 2416.20,
      buyerName: "Arturin"));
}

// 1. Función para saludar a todos
void greetEveryone() {
  print("Hola a Todas y Todos desde DART");
}

// 2. Función que retorna el día actual del mes
int getDayNumber() {
  return DateTime.now().day;
}

// 3. Función que saluda a alguien (parámetro dinámico)
String greetSomeone(dynamic personName) {
  return "Hola, $personName";
}

// 3.1 Función con parámetro tipificado
String greetSomeoneTyped(String personName) {
  return "Hola, $personName";
}

// 4. Función que saluda a alguien según la hora del día
String greetSomeoneHourOfDay(String personName, [int? hourDay]) {
  hourDay ??= DateTime.now().hour; // Usar la hora actual por defecto
  String greeting;
  print("Hora: $hourDay");
  if (hourDay >= 6 && hourDay < 12) {
    greeting = "Buenos días";
  } else if (hourDay >= 12 && hourDay < 18) {
    greeting = "Buenas Tardes";
  } else {
    greeting = "Buenas Noches";
  }

  return "$greeting, $personName";
}

// 6. Función con parámetros nombrados para el estado del carrito
String infoCarListStatus({
  required String buyerName,
  double amountCarList = 0.0,
  String status = "Selección de Productos",
}) {
  return "El carrito de compras de: $buyerName, tiene un total de: \$${amountCarList} y actualmente está en estatus: $status";
}
