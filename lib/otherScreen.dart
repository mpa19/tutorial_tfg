import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imageScreen.dart';

class otherScreen extends StatefulWidget {

  @override
  _otherScreenState createState() => _otherScreenState();
}

class _otherScreenState extends State<otherScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
        SizedBox(height: 10),

        Center(
          child: ButtonTheme(
            buttonColor: Color(0xFF031e39),
            child: FlatButton(
              color: Colors.blueGrey, //Color(0xFF81A483),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => inputScreen()
                  ),
                );
              },
              child: Text('Input and selections',style: TextStyle(color: Colors.white),
              ),

            )
          )
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              top: 0,
              right: 8.0,
              //bottom: 0,
            ),
            child: ButtonTheme(
              buttonColor: Color(0xFF031e39),
              minWidth: double.infinity,
              child: FlatButton(
                color: Colors.blueGrey, //Color(0xFF81A483),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                   builder: (context) => inputScreen()
                  ),
                  );
                },
                child: Text('Input and selections',style: TextStyle(color: Colors.white),
                ),

              )
            ),
          )
        ),
        Row(
          children: <Widget>[
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                buttonColor: Color(0xFF031e39),
                minWidth: double.infinity,
                child: FlatButton(
                  color: Colors.blueGrey, //Color(0xFF81A483),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => inputScreen()
                    ),
                    );
                  },
                  child: Text('Input and selections',style: TextStyle(color: Colors.white),
                  ),

                )
              ),
            )
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTheme(
                buttonColor: Color(0xFF031e39),
                minWidth: double.infinity,
                child: FlatButton(
                  color: Colors.blueGrey, //Color(0xFF81A483),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => inputScreen()
                    ),
                    );
                  },
                  child: Text('Input and selections',style: TextStyle(color: Colors.white),),
                )
              ),
            )
          )
        ],
       )
      ]
      )
    );
  }
}