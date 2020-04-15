import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RaisedButton.icon(
            icon: Icon(Icons.payment, color: Colors.white,),
            label: Text("Make Payment", style: TextStyle(color: Colors.white),),
            color: Colors.blue,
            onPressed: (){
              //Code
            },
          )
        ),
        appBar: AppBar(
          title: Text("Flutter Application"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

