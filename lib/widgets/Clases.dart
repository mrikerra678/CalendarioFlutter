class Clases {
  final String name;
  final String flag;
  final String capital;

  Clases({this.name, this.flag, this.capital});

  factory Clases.fromJson(Map<String, dynamic> json) {
    return new Clases(
      name: json['name'] as String,
      flag: json['flag'] as String,
      capital: json['capital'] as String,
    );
  }
}
