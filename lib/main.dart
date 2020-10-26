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
  @override
  Widget build(BuildContext context) {
    var container = Container(
        width: 75,
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
                Icon(Icons.brush),
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
          Center(
            child: Text(""),
          ),
          Center(
            child: Text("L"),
          ),
          Center(
            child: Text("M"),
          ),
          Center(
            child: Text("MI"),
          ),
          Center(
            child: Text("J"),
          ),
          Center(
            child: Text("V"),
          ),
        ]),
        for(int y =0;y<numHorario;y++)...{
           TableRow(
          children: [
            Center(
             child:Text("8:00 - 8:55"),
            ),
            for (int i = 0; i <= numHorario; i++) ...{
              Column(
                children: [
                  container,
                ],
              ),
            },
          ],
        ),

        }
       
      ]),
    );
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
