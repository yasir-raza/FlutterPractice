import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: CounterWidget()
    );
  }
}
class CounterWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CounterWidgetState();
  }
}
class CounterWidgetState extends State<CounterWidget>{
  var counter = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Text("Counter Value is $counter", style: TextStyle(fontSize: 30),),
      ),
      appBar: AppBar(
        leading: Icon(Icons.directions_car),
        title: Text("Counter App Practice"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}