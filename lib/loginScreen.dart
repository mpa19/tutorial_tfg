import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_tfg/otherScreen.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState  extends State<loginScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: ButtonTheme(
              buttonColor: Color(0xFF031e39),
              child: FlatButton(
                color: Colors.blueGrey, //Color(0xFF81A483),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => otherScreen()
                  ),
                  );
                },
                child: Text('Login',style: TextStyle(color: Colors.white),
                ),

              )
          )
      ),
    );
  }
}


