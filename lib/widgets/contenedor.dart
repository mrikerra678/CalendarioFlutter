import 'package:calendarProyect/widgets/formulario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contenedor {
  int id;
  String clase;
  String profe;

  Contenedor(String clase, int id, String profe) {
    this.clase = clase;
    this.id = id;
    this.profe = profe;
  }
}

class Cosas extends StatefulWidget {
  const Cosas({Key key}) : super(key: key);

  Cosos createState() => Cosos();
}

class Cosos extends State<Cosas> {
  @override
  Widget build(BuildContext context) {
    Contenedor contenedor;

    for (int i = 0; i < 30; i++) {
      contenedor = new Contenedor("yhg", i, "ii");
    }

    var container = InkWell(
      child: Container(
          width: 100,
          height: 90,
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
                  Text(contenedor.profe.toString()),
                ],
              )
            ],
          )),
    );
    return container;
  }
}
