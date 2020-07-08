import 'package:flutter/material.dart';
import 'package:tutorial_tfg/imageScreen.dart';
import 'package:tutorial_tfg/otherScreen.dart';

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
  int _selectedIndex = 0;
  Widget callPage(int selectedIndex) {
    switch (selectedIndex) {
      case 0: return otherScreen();
      case 1: return inputScreen();
        break;
      default: return otherScreen();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
        body: callPage(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                title: Text('Business'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                title: Text('School'),
              ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
    );
  }
}

/*
* Column(
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
      ),
* */