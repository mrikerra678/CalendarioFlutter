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
  int numHoras = 8;

  List<String> listaHorario = [
    "8:00     8:55",
    "8:55     9:50",
    "09:50    10:45",
    "10:45    11:40",
    "11:40    12:05",
    "12:05    13:00",
    "13:00    13:55",
    "13:55    14:50"
  ];
  List<String> listaDiaSemanas = ["L", "M", "X", "J", "V"];
  List<Cosas> listaContenedor = [];

  @override
  Widget build(BuildContext context) {
    for (int z = 0; z < 7; z++) {
      listaContenedor.add(Cosas(numero: z));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
      ),
      body: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: [
            Text(""),
            for (int i = 0; i <= numHorario; i++) ...[
              Center(
                child: Text(listaDiaSemanas[i], textAlign: TextAlign.justify),
              ),
            ],
          ]),
          TableRow(children: [
            Center(
              child: Text(listaHorario[0], textAlign: TextAlign.justify),
            ),
            listaContenedor[0],
            listaContenedor[0],
            listaContenedor[0],
            listaContenedor[2],
            listaContenedor[6],
          ]),
          TableRow(children: [
            Center(
              child: Text(listaHorario[1], textAlign: TextAlign.justify),
            ),
            listaContenedor[0],
            listaContenedor[4],
            listaContenedor[3],
            listaContenedor[2],
            listaContenedor[6],
          ]),
          TableRow(children: [
            Center(
              child: Text(listaHorario[2], textAlign: TextAlign.justify),
            ),
            listaContenedor[1],
            listaContenedor[4],
            listaContenedor[3],
            listaContenedor[3],
            listaContenedor[2],
          ]),
          TableRow(children: [
            Center(
              child: Text(listaHorario[3], textAlign: TextAlign.justify),
            ),
            listaContenedor[1],
            listaContenedor[2],
            listaContenedor[4],
            listaContenedor[6],
            listaContenedor[2],
          ]),
          TableRow(children: [
            TableCell(
              child: Divider(height: 8),
            ),
            TableCell(
              child: Divider(height: 2),
            ),
            TableCell(
              child: Divider(height: 2),
            ),
            TableCell(
              child: Divider(height: 2),
            ),
            TableCell(
              child: Divider(height: 2),
            ),
            TableCell(
              child: Divider(height: 2),
            )
          ]),
          TableRow(children: [
            Center(
              child: Text(listaHorario[4], textAlign: TextAlign.justify),
            ),
            listaContenedor[1],
            listaContenedor[1],
            listaContenedor[4],
            listaContenedor[6],
            listaContenedor[2],
          ]),
          TableRow(children: [
            Center(
              child: Text(listaHorario[5], textAlign: TextAlign.justify),
            ),
            listaContenedor[2],
            listaContenedor[1],
            listaContenedor[4],
            listaContenedor[1],
            listaContenedor[3],
          ]),
          TableRow(children: [
            Center(
              child: Text(listaHorario[6], textAlign: TextAlign.justify),
            ),
            listaContenedor[3],
            listaContenedor[5],
            listaContenedor[6],
            listaContenedor[1],
            listaContenedor[3],
          ]),
          TableRow(children: [
            Center(
              child: Text(listaHorario[7], textAlign: TextAlign.justify),
            ),
            listaContenedor[1],
            listaContenedor[5],
            listaContenedor[6],
            listaContenedor[5],
            listaContenedor[0],
          ]),
        ],
      ),
    );
  }
}
