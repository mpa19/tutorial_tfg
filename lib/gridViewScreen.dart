import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_tfg/otherScreen.dart';
import 'package:tutorial_tfg/sendDataScreen.dart';


class gridViewScreen extends StatefulWidget {

  @override
  _gridViewScreenState createState() => _gridViewScreenState();
}

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class _gridViewScreenState extends State<gridViewScreen>{

  _onSelect(WhyFarther value) {
    switch (value) {
      case WhyFarther.harder:
        Navigator.of(context).push(
            CupertinoPageRoute(builder: (BuildContext context) => otherScreen()));
        break;
      case WhyFarther.smarter:
        Navigator.of(context).push(CupertinoPageRoute(
            builder: (BuildContext context) => sendDataScreen()));
        break;
      default:
        Navigator.of(context).push(CupertinoPageRoute(
            builder: (BuildContext context) => otherScreen()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Grid View"),
          leading: new IconButton(
            icon: new Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(null),
          ),
          actions: <Widget>[
            PopupMenuButton<WhyFarther>(
              onSelected: _onSelect,
              itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.harder,
                  child: Text('Working a lot harder'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.smarter,
                  child: Text('Being a lot smarter'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.selfStarter,
                  child: Text('Being a self-starter'),
                ),
                const PopupMenuItem<WhyFarther>(
                  value: WhyFarther.tradingCharter,
                  child: Text('Placed in charge of trading charter'),
                ),
              ],
            )
          ],
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text("He'd have you all unravel at the"),
                    color: Colors.green[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Heed not the rabble'),
                    color: Colors.green[200],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Sound of screams but the'),
                    color: Colors.green[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Who scream'),
                    color: Colors.green[400],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Revolution is coming...'),
                    color: Colors.green[500],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text('Revolution, they...'),
                    color: Colors.green[600],
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}