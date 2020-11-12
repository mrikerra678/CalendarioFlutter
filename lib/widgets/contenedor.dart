import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contenedor {
  String clase;
  String profe;
  String aula;
  Color color;

  Contenedor(String clase, String aula, String profe, Color color) {
    this.clase = clase;
    this.profe = profe;
    this.aula = aula;
    this.color = color;
  }
}

class Cosas extends StatefulWidget {
  final int numero;
  const Cosas({Key key, this.numero}) : super(key: key);

  Cosos createState() => Cosos(numero);
}

class Cosos extends State<Cosas> {
  Cosos(numero);

  @override
  Widget build(BuildContext context) {
    Contenedor contenedor;

    var asignaturas = ["", "ACC", "PMDM", "DI", "PSP", "EIE", "SGE"];
    var asignaturaProfe = [
      "",
      "Miren",
      "Santi",
      "Martin",
      "Beñat",
      "Karmele",
      "Aritz"
    ];
    var aulas = ["", "104", "104", "104", "104", "107", "104"];
    var colores = [
      Colors.amber[100],
      Colors.amber,
      Colors.blue,
      Colors.green,
      Colors.red,
      Colors.lime,
      Colors.pink[200]
    ];

    if (widget.numero == 0) {
      contenedor = new Contenedor(
          asignaturas[0], aulas[0], asignaturaProfe[0], colores[0]);
    } else if (widget.numero == 1) {
      contenedor = new Contenedor(
          asignaturas[1], aulas[1], asignaturaProfe[1], colores[1]);
    } else if (widget.numero == 2) {
      contenedor = new Contenedor(
          asignaturas[2], aulas[2], asignaturaProfe[2], colores[2]);
    } else if (widget.numero == 3) {
      contenedor = new Contenedor(
          asignaturas[3], aulas[3], asignaturaProfe[3], colores[3]);
    } else if (widget.numero == 4) {
      contenedor = new Contenedor(
          asignaturas[4], aulas[4], asignaturaProfe[4], colores[4]);
    } else if (widget.numero == 5) {
      contenedor = new Contenedor(
          asignaturas[5], aulas[5], asignaturaProfe[5], colores[5]);
    } else if (widget.numero == 6) {
      contenedor = new Contenedor(
          asignaturas[6], aulas[6], asignaturaProfe[6], colores[6]);
    }

    var container = InkWell(
      child: Container(
          //width: 50,
          height: 70,
          decoration: BoxDecoration(
              border: Border.all(width: 0.9, color: Colors.black),
              color: contenedor.color,
              borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              Column(
                children: [
                  Text(contenedor.clase.toString()),
                ],
              ),
              Column(
                children: [
                  Text(contenedor.aula.toString()),
                ],
              ),
              Column(
                children: [
                  Text(contenedor.profe.toString()),
                ],
              )
            ],
          )),
    );
    return container;
  }
}
