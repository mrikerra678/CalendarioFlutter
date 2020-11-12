import 'package:calendarProyect/widgets/contenedor.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Formulario extends StatefulWidget {
  Formulario({Key key, Contenedor contenedor}) : super(key: key);

  Contenedor contenedor;

  @override
  SecondRoute createState() => SecondRoute();
}

class SecondRoute extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    var container = Container(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Clase:"),
            TextFormField(onChanged: (value) {
              setState(() {
                widget.contenedor.clase = value;
              });
            }),
            Text('$widget'),
            TextFormField(),
            Text("Aula:"),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  widget.contenedor.clase = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: BackButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.orange),
          color: Colors.green,
          borderRadius: BorderRadius.circular(15)),
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("Titulo"),
        ),
        body: container);
  }
}
