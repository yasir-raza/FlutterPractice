import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: CrossFadeScreen(),
    );
  }
}
class CrossFadeScreen extends StatefulWidget {
  @override
  _CrossFadeScreenState createState() => _CrossFadeScreenState();
}

class _CrossFadeScreenState extends State<CrossFadeScreen> {
  bool isFormSubmitted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedCrossFade(
          firstChild: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(),
              SizedBox(height: 16,),
              TextFormField(),
              FlatButton(
                child: Text("Submit"),
                onPressed: (){
                  setState(() {
                    isFormSubmitted = true;
                  });
                },
                color: Colors.red,
                textColor: Colors.white,
              ),
            ],
          ),
          secondChild: Container(
            color: Colors.green,
            padding: EdgeInsets.all(32),
            child: Text("Form has been submitted", style: TextStyle(color: Colors.white),),
          ),
          duration: Duration(seconds: 1),
          crossFadeState: isFormSubmitted ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        ),
      ),
    );
  }
}
