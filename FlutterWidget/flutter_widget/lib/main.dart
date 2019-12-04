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
  runApp(MaterialApp(
      title: "Fluter Widget App",
      home: HomePage()
      )
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HKHR App",
      home: Scaffold(
          appBar: AppBar(title: Text("Home")),
          body:
          Padding(padding: EdgeInsets.all(20.0),
            child: Text("HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH HkHRHKHRRRHH",
              textAlign: TextAlign.justify,
              style: (TextStyle(color: Colors.green,fontSize: 15,fontStyle: FontStyle.italic)),
          )
          )
      ),
    );
  }
}
