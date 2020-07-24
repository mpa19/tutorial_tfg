import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginScreen.dart';

class inputScreen extends StatefulWidget {

  @override
  _inputScreenState createState() => _inputScreenState();
}

class _inputScreenState extends State<inputScreen>{

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cerrando session'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Se esta cerrando al session.'),
                Text('Estas seguro?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Si'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => loginScreen()
                )
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
              child: FlatButton(
                onPressed: () {
                  _showMyDialog();
                },
                child: Text("Cerrar session",
                    style: TextStyle(
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      decorationStyle: TextDecorationStyle.wavy,
                    )
                  ),
                ),
              ),
    );
  }
}