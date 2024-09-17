void main(){
  //declaracion de variables
  final String pokemon = "Charizard";
  final int hp = 150;
  final bool isAlive = true;
  String statuslive;
//if para el estatus de la vida
  if(isAlive != true){
    statuslive ="Esta Muerto";
  }else
    statuslive = "Vivo";

  final List<String> abilities =["Mar Llamas"];
  final sprites = <String> ['https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/006.png'];
  //imprimir variables
  print(""" 
        El pokemon que elgiste es :$pokemon,
        Vida(HP):$hp,
        Estado:$statuslive,
        Habilidad:$abilities,
        Imagen;$sprites
  """);



}