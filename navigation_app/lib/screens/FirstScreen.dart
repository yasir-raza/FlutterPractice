import 'package:flutter/material.dart';
import 'package:navigationapp/screens/SecondScreen.dart';
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: FlatButton(
          child: Text("Navigate to other"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context){
                return SecondScreen();
              }
            ));
          },
          color: Colors.lightBlueAccent,
        ),
      ),
      appBar: AppBar(
        title: Text("First Screen"),
      ),
    );
  }
}
