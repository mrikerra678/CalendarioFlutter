import 'package:calendarProyect/widgets/contenedor.dart';
import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  Formulario({Key key, Contenedor contenedor}) : super(key: key);

  Contenedor contenedor;

  @override
  SecondRoute createState() => SecondRoute();
}

class SecondRoute extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    // final _formKey = GlobalKey<FormState>();

    final _formKey = GlobalKey<FormState>();
    var container = Container(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Clase:"),
            TextFormField(
              onChanged: (value) => cambiarEstado(value),
            ),
            Text("Profesor:"),
            TextFormField(),
            Text("Aula:"),
            TextFormField(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: BackButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                //child: Text('Guardar'),
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

  cambiarEstado(String value) {
    setState(() {
      widget.contenedor.clase = value;
    });
  }
}
