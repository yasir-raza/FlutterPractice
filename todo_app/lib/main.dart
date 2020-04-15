import 'package:flutter/material.dart';

import 'TaskModel.dart';

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
  final textController = TextEditingController();
  List<TaskModel> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            TextField(controller: textController,),
          FlatButton(
            child: Text("Insert"),
            onPressed: (){
              
            },
            color: Colors.blue,
            textColor: Colors.white,
          ),
            FlatButton(
              child: Text("Show All Task"),
              onPressed: (){},
              color: Colors.red,
              textColor: Colors.white,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: Text("${tasks[index].id}"),
                      title: Text("${tasks[index].name}"),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: tasks.length),
            )
          ],
        ),
      ),
    );
  }
}

