void main() {
  // Inicia la ejecución del programa
  print('Inicio del programa');
  
  // Realiza una petición HTTP a la URL especificada
  httpGet('https://marvin.com/yahir')
    // Cuando la petición se completa exitosamente, se ejecuta esta función
    .then((value) {
      // Imprime el valor de la respuesta
      print(value);
    })
    // Si ocurre un error durante la petición, se maneja en esta parte
    .catchError((err) {
      // Imprime el mensaje de error
      print('Error: $err');
    });
  
  // Imprime un mensaje indicando que la ejecución ha llegado a terminado
  print('Fin del programa');
}

// Define una función que simula una petición HTTP
Future<String> httpGet(String url) {
  // Retorna un futuro que se completará después de 1 segundo
  return Future.delayed(const Duration(seconds: 1), () {
    // Lanza un error simulado en lugar de devolver una respuesta
    throw 'Error en la peticion http';
    // Descomentar la siguiente línea devolvería una respuesta exitosa
    // return 'Respuesta de peticion http';
  });
}
