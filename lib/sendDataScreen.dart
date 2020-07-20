import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sendDataScreen extends StatefulWidget {

  @override
  _sendDataScreenState createState() => _sendDataScreenState();
}

class _sendDataScreenState extends State<sendDataScreen>{

  @override
  Widget build(BuildContext context) {
    String todo = ModalRoute.of(context).settings.arguments;
    if(todo == null) { todo = "";}
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Send Data and Exit button"),
          leading: new IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(null),
          ),
        ),
      body: new Container(
          child: Text(todo),
      ),
    );
  }
}