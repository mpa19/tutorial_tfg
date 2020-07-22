import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_tfg/main.dart';

class inputScreen extends StatefulWidget {

  @override
  _inputScreenState createState() => _inputScreenState();
}

class _inputScreenState extends State<inputScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MyApp()
                ),
                );
              },
              child: Text("Cerrar session",
                style: TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
              ),
            ),
        )
    );
  }
}