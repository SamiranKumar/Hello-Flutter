import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

///========================================================================================

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

///========================================================================================

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 15.0),
          children: <Widget>[
            Text(
              "Wellcome, Samiran",
              style: TextStyle(
                  fontFamily: "varela",
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF473d3A)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                 // image: DecorationImage(image: AssetImage("assets/image/model.png"),
                  image: DecorationImage(image: AssetImage('images/model.png'),
                  fit: BoxFit.contain
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

///========================================================================================
