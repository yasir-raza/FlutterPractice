import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyDropDown(),
    );
  }
}
class MyDropDown extends StatefulWidget {
  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  final List<String> subjects = ["Computer Science", "Biology", "Maths"];
  String selectedSubject = "Computer Science";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          DropdownButton<String>(
            value: selectedSubject,
            onChanged: (value){
              setState(() {
                selectedSubject = value;
              });
            },
            items: subjects.map<DropdownMenuItem<String>>((value){
              return DropdownMenuItem(
                child: Text(value),
                value: value,
              );
            }).toList(),
          ),
            Text(selectedSubject, style: TextStyle(fontSize: 36, fontWeight: FontWeight.w900),)
          ],
        ),
      ),
    );
  }
}
