void main() {
  /*Declaracion de clases en dart*/

  final spiderman = Hero("Peter Parker", "Sentido Aracnido");

  final fantastic4 = Team(type: 'Heroes', name: 'Fantastic 4');

  final brotherhood = Team(name: "Future Foundation");

  final deadpool = Hero("Wade Wilson", "Regeneracion");

  final xforce = Team(type: 'Anti-heroes', name: 'X-force');



  print('-----------SpiderMam------------');
  print("Nombre:${spiderman.name}");
  print("Poder:${spiderman.power}");
  print("Tipo:${fantastic4.type}");
  print("Nombre del Equipo:${fantastic4.name}");

  print("Nombre del equipo: ${brotherhood.name}");
  print("Tipo: ${brotherhood.type}");


  print('-----------Deadpool------------');
  print("Nombre:${deadpool.name}");
  print("Poder:${deadpool.power}");
  print("Tipo:${xforce.type}");
  print(xforce);
  print("Nombre del Equipo:${xforce.name}");

}

class Hero {
  String name;
  String power;

  Hero(String pName, String pPower)
      : name = pName,
        power = pPower;
}

/*Clase para el definir el equipo*/
class Team {
  String name;
  String type;

  Team({required this.name, this.type = "No definido"});

  @override
  String toString() {
    return 'Grupo: $name, Tipo: $type';
  }
}
