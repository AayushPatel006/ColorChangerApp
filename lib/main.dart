import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BG changer",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(title: Text("Random Background")),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;
  var colors = [
    Colors.amber,
    Colors.black,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.red,
    Colors.pink,
    Colors.orange
  ];
  var currentColor = Colors.white;
  var currentButtonColor = Colors.black;
  setRandomColor() {
    var rnd = Random().nextInt(colors.length);
    var rnd2 = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rnd];
      currentButtonColor = colors[rnd2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ElevatedButton(
          onPressed: setRandomColor,
          style: ElevatedButton.styleFrom(
            textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            primary: currentButtonColor,
            padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
          ),
          child: Text("Change it!"),
        ),
      ),
      color: currentColor,
    );
  }
}
