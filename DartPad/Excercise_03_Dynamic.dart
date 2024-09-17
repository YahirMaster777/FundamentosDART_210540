void main(){
// Practica 05: Tipos de datos dinamicos don Dynamic

  //declaracion de variables
  dynamic errorMessage;

  print(""" El valor inicial de errorMessage es $errorMessage,
  que por defecto permite establecer valores nulos """);

  errorMessage = "Error al cargar las variables";

  print(""" ---------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage, 
  en este casoi fue asignado con el tipo String""");

  errorMessage = 404;

   print(""" ---------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage, 
  en este casoi fue asignado con el tipo Int, el cual significa un codigo de error""");


  errorMessage = true;
   print(""" ---------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage, 
  en este caso fue asignado con el tipo boolenao""");

   errorMessage = [400,404,500,502,505];
   print(""" ---------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage, 
  en este de que se registren varios errores y los pone en una lista""");


   errorMessage = {404,"Error de red", true, -1054.23,"idgs"};
   print(""" ---------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage, 
  Puede ser un conjunto de datos (SET)""");
  //Marvin Yair Tolentino Perez 210540
}