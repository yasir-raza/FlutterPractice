import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                child: Text("Login", style: TextStyle(color: Colors.white),),
                onPressed: (){},
                color: Colors.red,
              ),
              Text("Hellow World"),
              Text("Text 5"),
            ],
          )
        ),
        appBar: AppBar(
          title: Text("Flutter Application 2"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }

}