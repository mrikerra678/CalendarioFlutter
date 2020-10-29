import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int numHorario = 4;
  int numHoras = 6;
  List<String> listaHorario = ["8:00 -8:50", "8-50:-9-50", "", "", "", ""];
  List<String> listaDiaSemanas = ["L", "M", "Mi", "J", "V"];
  @override
  Widget build(BuildContext context) {
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
                Text('Primera Clase'),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
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

    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
      ),
      body: Table(children: [
        TableRow(children: [
          Text(""),
          for (int i = 0; i <= numHorario; i++) ...[
            Center(
              child: Text(listaDiaSemanas[i], textAlign: TextAlign.justify),
            ),
          ],
        ]),
        for (int y = 0; y < numHoras; y++) ...[
          TableRow(
            children: [
              Center(
                child: Text(listaHorario[y], textAlign: TextAlign.justify),
              ),
              for (int i = 0; i <= numHorario; i++) ...[
                Column(
                  children: [
                    container,
                  ],
                ),
              ],
            ],
          ),
        ]
      ]),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    var container = Container(
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.orange),
          color: Colors.green,
          borderRadius: BorderRadius.circular(15)),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Clase:"),
            TextFormField(),
            Text("Clase:"),
            TextFormField(),
            Text("Clase:"),
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
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("Titulo"),
        ),
        body: container);
  }
}
/*

TableRow(children: [
              Text("8:00 - 8:55"),
              container,
              container,
              container,
              container,
              container,
            ]),
            TableRow(children: [
              Text("8:00 - 8:55"),
              container,
              container,
              container,
              container,
              container,
            ]),
            TableRow(children: [
              Text("8:00 - 8:55"),
              container,
              container,
              container,
              container,
              container,
              
            ]),
 
  
    
      Row(
        children: [
              Center(
                child: Text("8:00 - 8:55"),
              ),
              Center(
                child: Text("8:00 - 8:55"),
              ),
              Center(
                child: Text("8:00 - 8:55"),
              ),
              Center(
                child: Text("8:00 - 8:55"),
              ),
               ],
      ),
  */
