void main() {
  final pokemon = {
    "name": "Charizard",
    "hp": 100,
    "isAlive": true,
    "habilities": ["Mar Llamas", "Garra dura", "Gigallamarada"],
    "sprites": {
      1: "https://www.wikidex.net/wiki/Archivo:Charizard.png",
      2: "https://images.wikidexcdn.net/mwuploads/wikidex/thumb/7/77/latest/20231003152232/Charizard_Sleep.png/100px-Charizard_Sleep.png"
    }
  };

  final Map<String, dynamic> trainer = {
    "Name": "Ash Ketchup",
    "Gender": "Male",
    "Age": 12,
    "isGymnasiumLeader": false
  };

  final pokemons = {1: "Pikachu", 2: "Charmander", 3: "Squirtle", 4: "Pidgeot"};

  print("$pokemon");
  print("$trainer");

  print("""
  los datos actulaes del pokemon(map)son:
  $pokemon
  """);
  
   print("""
  los pokemones que tiene son:
  $pokemons
  """);

  print("----------------------------------");
    
  final tmp_sprites = pokemon['sprites'] as Map<int,String>;
  
  print("""acceder a los valores del pokemon, usando corchetes []
  
  :-------------D
  Nombre=${pokemon["name"]}
  Vida(HP)=${pokemon["hp"]}
  vivo=${pokemon["isAlive"]}
  Sprites=${pokemon["sprites"]}
  :--------------D
    
  Back:${tmp_sprites[2]}
  Front:${tmp_sprites[1]}
  :--------------D
  
  """);
  
  
  

  //obtener el valor independiente de las imagenes del fromnt y back del pokemon
  
  //Front:${(pokemon['sprites'])[1]}
  //Back:${pokemon['sprites'][2]}
  

  // Dado que la solucion ya esta obsoleta 



}