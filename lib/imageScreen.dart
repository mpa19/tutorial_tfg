import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imageScreen extends StatefulWidget {

  @override
  _imageScreenState createState() => _imageScreenState();
}

class _imageScreenState extends State<imageScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
          title: Text("ImageScreen"),
        ),
    );
  }
}