import 'package:calendarProyect/widgets/formulario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contenedor {
  int id;
  String clase = "";

  Contenedor(String clase, int id) {
    this.id = id;
    this.clase = clase;
  }
}

class Cosas extends StatefulWidget {
  const Cosas({Key key}) : super(key: key);

  Cosos createState() => Cosos();
}

class Cosos extends State<Cosas> {
  @override
  Widget build(BuildContext context) {
    Contenedor contenedor = new Contenedor("clase", 1);
    var container = Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.orange),
            color: Colors.green,
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Column(
              children: [
                Text(contenedor.clase.toString()),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Formulario(contenedor: contenedor)),
                    );
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
            Column(
              children: [
                Text("Descripcion"),
              ],
            )
          ],
        ));
    return container;
  }
}
