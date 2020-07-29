import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_tfg/main.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          // Encuentra el Scaffold en el árbol de widgets y ¡úsalo para mostrar un SnackBar!
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}

class _loginScreenState  extends State<loginScreen>{
  String dropdownValue = 'Marc';

  final snackBar = SnackBar(
    content: Text('Yay! A SnackBar!'),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        // Algo de código para ¡deshacer el cambio!
      },
    ),
  );

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      body: Column(

          children: <Widget>[

            Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(
                          color: Colors.deepPurple
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                        _scaffoldKey.currentState.showSnackBar(snackBar);

                      },
                      items: <String>['Marc', 'Mario', 'Mike', 'Gerard']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      })
                          .toList(),
                    )
                  ],
                )
            ),
            Expanded(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 200,
                    buttonColor: Color(0xFF031e39),
                    child: FlatButton(
                      color: Colors.blueGrey, //Color(0xFF81A483),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => MyApp()
                        ),
                        );
                      },
                      child: Text('Login',style: TextStyle(color: Colors.white),
                      ),
                    )
                  )
                ],
              )
            ),
        ]
      ),
    );
  }
}


