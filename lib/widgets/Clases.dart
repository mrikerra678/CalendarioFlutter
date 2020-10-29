class Clases {
  //final String diasSemana;
  final String nombre;
  final String abreviatura;
  final String profesor;
  final int aula;

  Clases({this.nombre, this.abreviatura, this.profesor, this.aula});

  factory Clases.fromJson(Map<String, dynamic> json) {
    return new Clases(
      nombre: json['clases'] as String,
      abreviatura: json['abreviatura'] as String,
      profesor: json['profesor'] as String,
      aula: json['aula'] as int,
    );
  }
}
