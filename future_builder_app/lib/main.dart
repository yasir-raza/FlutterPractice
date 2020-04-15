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
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  Future<String> downloadData(){
    return Future.delayed(Duration(seconds: 5),(){
      return "Your data is downloaded";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.favorite),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: FutureBuilder<String>(
            future: downloadData(),
            builder: (context, datasnapshot){
              if(datasnapshot.connectionState == ConnectionState.done){
                return Text(datasnapshot.data);
              }
              else
                return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
