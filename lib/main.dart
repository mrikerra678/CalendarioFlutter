import 'package:calendarProyect/widgets/contenedor.dart';
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
                  children: [Cosas()],
                ),
              ],
            ],
          ),
        ]
      ]),
    );
  }
}

/*

 






---




          



 */
