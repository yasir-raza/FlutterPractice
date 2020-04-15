import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  List<String> nameofStudents = ["Student A", "Student B", "Student C", "Student D", "Student E", "Student F" ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
            itemBuilder: (context, index){
              return ListTile(
                title: Text(nameofStudents[index]),
                subtitle: Text("This is subtitle"),
                leading: Icon(Icons.directions_car),
              );
            },itemCount: nameofStudents.length,),
        appBar: AppBar(
          title: Text("Practice List View"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){},
        ),
      ),
    );
  }
}