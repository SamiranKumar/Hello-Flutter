import 'package:flutter/material.dart';

/***

    Widget Are two types (text,Button,
    1.Stateless ==> Have No relation with Data & App state (new Data or UI update )
    2.statefull ==> When need Data and state Change use Statefull Widget (any type Action like button click)

    Scaffold ==> when need new page create in Scaffold methord (appbar,body)
    appbar   ==> (tittle)

    object  ==> create new Instences with out 'new' Key word

 ***/

//Flutter EntryPoint
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HKHR App",
      home: Scaffold(
          appBar: AppBar(title: Text("Home")),
          body: Center(child: Text("HkHRHKHRRRHH")
          )
      ),
    );
  }
}
