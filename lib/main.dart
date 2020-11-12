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
        backgroundColor: Colors.black,
        title: Text("Horario 2020-2021"),
      ),
      body: Table(
        columnWidths: {
          0: FlexColumnWidth(0.6),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          TableRow(children: [
            Text(""),
            for (int i = 0; i <= numHorario; i++) ...[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    color: Colors.lightBlue[400],
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Center(
                  child: Text(listaDiaSemanas[i], textAlign: TextAlign.justify),
                ),
              )
            ],
          ]),
          TableRow(children: [
            Container(
              height: 80,
              child: Center(
                child: Text(listaHorario[0], textAlign: TextAlign.justify),
              ),
              decoration: BoxDecoration(
                  //border: Border.all(width: 1, color: Colors.amber[200]),
                  color: Colors.lightBlue[700],
                  borderRadius: BorderRadius.circular(5)),
            ),
            listaContenedor[0],
            listaContenedor[0],
            listaContenedor[0],
            listaContenedor[2],
            listaContenedor[6],
          ]),
          TableRow(children: [
            Container(
              height: 80,
              child: Center(
                child: Text(listaHorario[1], textAlign: TextAlign.justify),
              ),
              decoration: BoxDecoration(
                  color: Colors.lightBlue[600],
                  borderRadius: BorderRadius.circular(5)),
            ),
            listaContenedor[0],
            listaContenedor[4],
            listaContenedor[3],
            listaContenedor[2],
            listaContenedor[6],
          ]),
          TableRow(children: [
            Container(
              height: 80,
              child: Center(
                child: Text(listaHorario[2], textAlign: TextAlign.justify),
              ),
              decoration: BoxDecoration(
                  color: Colors.lightBlue[500],
                  borderRadius: BorderRadius.circular(5)),
            ),
            listaContenedor[1],
            listaContenedor[4],
            listaContenedor[3],
            listaContenedor[3],
            listaContenedor[2],
          ]),
          TableRow(children: [
            Container(
              height: 80,
              child: Center(
                child: Text(listaHorario[3], textAlign: TextAlign.justify),
              ),
              decoration: BoxDecoration(
                  color: Colors.lightBlue[400],
                  borderRadius: BorderRadius.circular(5)),
            ),
            listaContenedor[1],
            listaContenedor[2],
            listaContenedor[4],
            listaContenedor[6],
            listaContenedor[2],
          ]),
          TableRow(children: [
            TableCell(
              child: Divider(
                height: 8,
                color: Colors.white,
              ),
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
            Container(
              height: 80,
              child: Center(
                child: Text(listaHorario[4], textAlign: TextAlign.justify),
              ),
              decoration: BoxDecoration(
                  color: Colors.lightBlue[300],
                  borderRadius: BorderRadius.circular(5)),
            ),
            listaContenedor[2],
            listaContenedor[1],
            listaContenedor[4],
            listaContenedor[1],
            listaContenedor[3],
          ]),
          TableRow(children: [
            Container(
              height: 80,
              child: Center(
                child: Text(listaHorario[5], textAlign: TextAlign.justify),
              ),
              decoration: BoxDecoration(
                  color: Colors.lightBlue[200],
                  borderRadius: BorderRadius.circular(5)),
            ),
            listaContenedor[3],
            listaContenedor[5],
            listaContenedor[6],
            listaContenedor[1],
            listaContenedor[3],
          ]),
          TableRow(children: [
            Container(
              height: 80,
              child: Center(
                child: Text(listaHorario[6], textAlign: TextAlign.justify),
              ),
              decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  borderRadius: BorderRadius.circular(5)),
            ),
            listaContenedor[3],
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
