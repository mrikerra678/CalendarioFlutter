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
  @override

 
  Widget build(BuildContext context) {
    var container = Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            border: Border.all(width:8, color:Colors.orange),
            color: Colors.green, borderRadius: BorderRadius.circular(30)),
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
               Text("Descripcion de la clase de hoy"),
             
            ],)
          ],
        )
        );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[container],
        ),
      ),
    );
  }

}
