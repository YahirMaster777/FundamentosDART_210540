void main(){
//1.-Llamando a una funcion sin parametros
greetEveryone();

//2.-Llamando a una funcion que retorna valores
//a)Almacenando el dato en una variable
print("El dia de hoy es :${getDayNumber()} del mes");
//b)Almacenando el valo de la funcion en una nueva variable
final int diaMes;
diaMes = getDayNumber();
print("En tres dias sera ${diaMes+3}");

//3.- Llamando a una funcion con un solo parametro obligatorio
//llamando correcto
print(greetSomeone("Marvin"));
//b)en de que la funcion este declarada con dynamic
print(greetSomeone(4));
print(greetSomeone(-254));
print(greetSomeone(3.1416));
print(greetSomeone(true));
//c) mismo experimento pero ahora con la funcion con parametros tipados
/*print(greetSomeoneTyped("Marvin"));
print(greetSomeoneTyped(4));
print(greetSomeoneTyped(-254));
print(greetSomeoneTyped(3.1416));
print(greetSomeoneTyped(true));*/
//print(greetSomeone()); no se puede ejecutar por que requiere 

// impresion del saludo 

 print(greetHourOfDay("Juan", null)); // Saludo basado en la hora actual
  print(greetHourOfDay("Ana",6)); // "Buenos Días, Ana!"


}

//-------------------------------------------------Funciones y parametros -------------------------------------------------
//declaracion
void greetEveryone(){
  print("Hola a todos :)");
}

//Funcion que retorna datos 
getDayNumber(){
  DateTime now = DateTime.now();
  int day = now.day;
  return day;
}

String greetSomeone(personName){
  return ("Hola, ${personName}");
}


String greetSomeoneTyped(String personName){
  return ("Hola, ${personName}");
}


//4.- funcion con paramtros opcionales 

// String greetHourOfDay(String personName, DateTime ? hora){
//   hora ??= DateTime.now();
//   String Saludo;
//   if (hora >= 6 && hora < 12){
//     Saludo = "Buenos Dias";
//   }else if(hora >12 && hora < 18){
//     Saludo ="Buenas Tardes";

//   }else if(hora > 18 && hora < 24){
//     Saludo ="Buenas Noches";
//   }

// }

String greetHourOfDay(String personName, int? hora) {
  hora ??= DateTime.now().hour; // Si hora es nulo, se usa la hora actual
  print("Hora:${hora}");
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