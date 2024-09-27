void main() {
  // Creación de una instancia de la clase Person con valores estáticos
  final juanOliver = Person(
    ID: 1,
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

  // Impresión de los detalles de la persona
  print("--------------------------------------------");
  print("Datos de la persona");
  print("--------------------------------------------");
  print('ID: ${juanOliver.ID}');
  print('Nombre: ${juanOliver.name}');
  print('Apellido paterno: ${juanOliver.firstLastname}');
  print('Apellido materno: ${juanOliver.secondLastname}');
  print('Género: ${juanOliver.gender}');
  print('Grupo sanguíneo: ${juanOliver.bloodGroup}');
  print('CURP: ${juanOliver.curp}');
  print('Fecha de nacimiento: ${formatDate(juanOliver.birthdate)}');
  print('Activo: ${juanOliver.isActive}');
  print('Registtrado: ${formatDate(juanOliver.createdAt)}');
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
}
