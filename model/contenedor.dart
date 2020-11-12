import 'package:flutter/cupertino.dart';

class Contenedor {
  Color color;
  String text;
  int rowCount;
  String numberClass;
  String teacher;
  // constructor
  Contenedor(Color color, String text, int rowCount, String teacher,
      String numberClass) {
    this.color = color;
    this.text = text;
    this.numberClass = numberClass;
    this.teacher = teacher;
  }
}
