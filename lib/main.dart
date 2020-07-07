import 'package:flutter/material.dart';
import 'package:tutorial_tfg/imageScreen.dart';

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
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body : Column(
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
                    child: Text('Input and selections',style: TextStyle(color: Colors.white),),

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
                  child: Text('Input and selections',style: TextStyle(color: Colors.white),),

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
                            child: Text('Input and selections',style: TextStyle(color: Colors.white),),

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
 /* ButtonTheme(
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
        ),
      ),
*/