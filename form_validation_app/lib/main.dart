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
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  final _key = GlobalKey<FormState>();
  String msg = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Form(
          key: _key,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (value){
                  if(value.isEmpty)
                    return "Username can not be empty";
                  else if(value.length <= 5)
                    return "Value should be greater than 5";
                  else
                    return null;
                },
              ),
              FlatButton(
                child: Text("Validate"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  if(_key.currentState.validate()){
                    msg = "Your data is submitted";
                    print(msg);
                  }
                },
              ),
              Text(msg)
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Form Validation"),
      ),
    );
  }
}
