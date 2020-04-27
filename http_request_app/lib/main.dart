import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'StudentModel.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HttpScreen(),
    );
  }
}
class HttpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<StudentModel>(
          future: getStudent(),
          builder: (context, snapshot){
            if(snapshot.hasData){
                final student = snapshot.data;
                return Text("Name: ${student.name} \n Skill : ${student.skill}");
            }
            else if(snapshot.hasError){
              return Text(snapshot.error.toString());
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

Future<StudentModel> getStudent() async{
  final url = "https://api.jsonbin.io/b/5e1219328d761771cc8b9394";
  final response = await http.get(url);
  if(response.statusCode == 200)
    {
      final jsonStudent = jsonDecode(response.body);
      return StudentModel.fromJson(jsonStudent);
    }
  else{
    throw Exception();
  }


}