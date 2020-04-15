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
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              color: Colors.red,
              child: Image.asset("assets/owl.png", fit: BoxFit.contain,)
            ),
            Container(
              width: double.infinity,
              color: Colors.grey[200],
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.call, color: Colors.blue, size: 25,),
                      Container(height: 4,),
                      Text("Call", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.call, color: Colors.blue, size: 25,),
                      Container(height: 4,),
                      Text("Call", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.call, color: Colors.blue, size: 25,),
                      Container(height: 4,),
                      Text("Call", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 100,
                    color: Colors.green,
                  ),
                  Expanded(
                    child: Container(
                      width: 150,
                      height: 100,
                      color: Colors.red,
                    ),

                  ),
                  Container(
                    width: 150,
                    height: 100,
                    color: Colors.yellow,
                  ),
                ],
              ),
            )
          ],
        ),
        appBar: AppBar(
          title: Text("Practice Container Widget"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){},
        ),
      ),
    );
  }
}