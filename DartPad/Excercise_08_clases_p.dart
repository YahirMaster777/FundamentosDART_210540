void main() {
  // Creación de instancias de la clase Person con valores estáticos
  final juanOliver = Person(
    ID: 1,
    cortesyTitle: "Sr.",
    name: 'Juan',
    firstLastname: 'Oliver',
    secondLastname: 'Pérez',
    gender: 'Masculino',
    bloodGroup: 'O+',
    curp: 'OJPJ850607HDFLRN01',
    birthdate: DateTime(2002, 6, 7),
    isActive: true,
    createdAt: DateTime(2023, 1, 1),
    updatedAt: DateTime(2023, 8, 1),
  );

  final mariaGomez = Person(
    ID: 2,
    name: 'María',
    firstLastname: 'Gómez',
    gender: 'Femenino',
    bloodGroup: 'A+',
    birthdate: DateTime(1990, 5, 15),
    // No se proporciona cortesyTitle, quedará como null
  );

  // Impresión de los detalles de las personas
  print("--------------------------------------------");
  print("Datos de la persona 1");
  print("--------------------------------------------");
  print(juanOliver);
  
  print("--------------------------------------------");
  print("Datos de la persona 2");
  print("--------------------------------------------");
  print(mariaGomez);
}

/// Función para formatear la fecha en el formato dd/mm/aa
String formatDate(DateTime date) {
  return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year.toString().substring(2)}';
}

/// Clase de la tabla persona de la base de datos
class Person {
  int ID;
  String? cortesyTitle;
  String name;
  String firstLastname;
  String? secondLastname;
  String gender;
  String bloodGroup;
  String? curp;
  DateTime birthdate;
  bool isActive;
  DateTime createdAt;
  DateTime? updatedAt;

  /// Constructor de la clase Person
  /// Si `createdAt` no se proporciona, se asigna la fecha y hora actuales
  Person({
    required this.ID,
    this.cortesyTitle,  // Título de cortesía opcional
    required this.name,
    required this.firstLastname,
    this.secondLastname,
    required this.gender,
    required this.bloodGroup,
    this.curp,
    required this.birthdate,
    this.isActive = true, // Valor por defecto: true
    DateTime? createdAt,
    this.updatedAt,
  }) : createdAt = createdAt ?? DateTime.now();

  /// Sobrescribir el método toString para una mejor presentación
  @override
  String toString() {
    return '''
ID: $ID
Título de cortesía: ${cortesyTitle ?? "No registrado"}
Nombre: $name
Apellido paterno: $firstLastname
Apellido materno: ${secondLastname ?? "No registrado"}
Género: $gender
Grupo sanguíneo: $bloodGroup
CURP: ${curp?.isNotEmpty == true ? curp : "No registrado"}
Fecha de nacimiento: ${formatDate(birthdate)}
Activo: ${isActive ? "Sí" : "No"}
Registrado: ${formatDate(createdAt)}
Última actualización: ${updatedAt != null ? formatDate(updatedAt!) : 'Sin actualizar'}
''';
  }
}
