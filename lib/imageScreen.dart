import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class inputScreen extends StatefulWidget {

  @override
  _inputScreenState createState() => _inputScreenState();
}

class _inputScreenState extends State<inputScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
          title: Text("Input and selections"),
        ),
    );
  }
}