abstract class Animal {}

//sub clases
abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}


//metodos
mixin Volador {
  void volar() => print("Estoy volando");
}
mixin Caminante {
  void caminar() => print("Estoy caminando");
}
mixin Nadador {
  void nadar() => print("Estoy nadando");
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Caminante {}
class Gato extends Mamifero with Caminante {}
class Paloma extends Ave with Caminante, Volador {} // Fixed Caminate to Caminante
class Pato extends Ave with Caminante, Volador, Nadador {}
class Tiburon extends Pez with Nadador {}
class PezVolador extends Pez with Nadador {}

void main() {
  print("------Flipper------");
  final flipper = Delfin();
  flipper.nadar();

  print("------Batman------");
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  print("------Namor------");

  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
  print("------Chupa Cabras------");

  final chupacabras = Murcielago();
  chupacabras.caminar();
  chupacabras.volar();
}
