import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreferencesapp/HomeScreen.dart';
import 'package:sharedpreferencesapp/WelcomeScreen.dart';

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
      home: MainScreen(),
    );
  }
}
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          child: Text("Proceed", style: TextStyle(color: Colors.white),),
          color: Colors.blue,
          onPressed: () async{
            bool visitingFlag = await getVisitingFlap();
            setVisitingFlag();
            if(visitingFlag == true){
              // It is the case when the user is visiting for not first
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HomeScreen()
              ));
            }
            else{
              // It is the case when the user is visiting for  first
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => WelcomeScreen()
              ));
            }
          },
        ),
      ),
    );
  }
}
setVisitingFlag() async{
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("alreadyVisited", true);
}
getVisitingFlap() async{
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool alreadyVisited = preferences.getBool("alreadyVisited") ?? false;
  return alreadyVisited;
}