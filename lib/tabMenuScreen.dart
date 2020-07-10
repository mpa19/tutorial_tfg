import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'inputScreen.dart';

class tabMenuScreen extends StatefulWidget {

  @override
  _tabMenuScreenState createState() => _tabMenuScreenState();
}

class _tabMenuScreenState extends State<tabMenuScreen>{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints(maxHeight: 150.0),
            child: Material(
              color: Colors.red,
              child: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(text: "DOS",),
                  Tab(icon: Icon(Icons.directions_bike)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



/*Expanded(
            child: TabBarView(
              children: [
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          ),*/