void main() {
  // Creación de una instancia de la clase Person con valores estaticos
  final juanOliver = Person(
    ID: 1,
    name: 'Juan',
    firstLastname: 'Oliver',
    secondLastname: 'Pérez',
    gender: 'Masculino',
    bloodGroup: 'O+',
    curp: 'OJPJ850607HDFLRN01',
    birthdate: DateTime(1985, 6, 7),
    isActive: true,
    createdAt: DateTime(2023, 1, 1),
    updatedAt: DateTime(2023, 8, 1),
  );

  // impresion de los detalles de la persona
  print('ID: ${juanOliver.ID}');
  print('Nombre: ${juanOliver.name}');
  print('Apellido paterno: ${juanOliver.firstLastname}');
  print('Apellido materno: ${juanOliver.secondLastname}');
  print('Género: ${juanOliver.gender}');
  print('Grupo sanguíneo: ${juanOliver.bloodGroup}');
  print('CURP: ${juanOliver.curp}');
  print('Fecha de nacimiento: ${juanOliver.birthdate}');
  print('Activo: ${juanOliver.isActive}');
  print('Creado en: ${juanOliver.createdAt}');
  print('Última actualización: ${juanOliver.updatedAt}');
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
    this.isActive = true,  // Valor por defecto: true
    DateTime? createdAt,
    this.updatedAt,
  }) : createdAt = createdAt ?? DateTime.now();
}
