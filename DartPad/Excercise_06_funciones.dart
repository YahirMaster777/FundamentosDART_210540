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
print(greetSomeoneTyped("Marvin"));
print(greetSomeoneTyped(4));
print(greetSomeoneTyped(-254));
print(greetSomeoneTyped(3.1416));
print(greetSomeoneTyped(true));
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


dynamic greetSomeone(personName){
  return ("Hola, ${personName}");
}