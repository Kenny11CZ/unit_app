import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class MenuScreen extends StatefulWidget {

  @override
  _MenuScreenState createState() => new _MenuScreenState();
}

void test() {}

//new RaisedButton(onPressed: test, child: const Text('Start'),),
//new RaisedButton(onPressed: test, child: const Text('Produkty'),),
//new RaisedButton(onPressed: test, child: const Text('O spolecnosti'))

Widget middleMenu(BuildContext context) {
  return new Center(
    child: new Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new Image(image: new AssetImage('res/img/logo.png'), height: 100.0,),
        new RaisedButton(onPressed: test, child: const Text('Start'), padding: new EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0), textColor: Theme.of(context).textTheme.title.color,),
        new RaisedButton(onPressed: test, child: const Text('Produkty'), padding: new EdgeInsets.fromLTRB(38.0, 0.0, 38.0, 0.0), textColor: Theme.of(context).textTheme.title.color),
        new RaisedButton(onPressed: test, child: const Text('O společnosti'), padding: new EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0), textColor: Theme.of(context).textTheme.title.color)

      ],
    ),
  );
}

Widget topMenu(BuildContext context) {
  return new Stack(
    children: <Widget>[
      new Positioned(child: new IconButton(icon: new Icon(Icons.local_bar), onPressed: test,), left: 5.0,),
      new Positioned(child: new IconButton(icon: new Icon(Icons.settings), onPressed: test,), right: 5.0,),
    ],
  );

}

Widget generateMenu(BuildContext context) {
  var res = new Stack(
    children: <Widget>[
      middleMenu(context),
      topMenu(context),
    ],
  );
  return res;
}

class _MenuScreenState extends State<MenuScreen> {

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: new Scaffold(
        body: new Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage('res/img/giphy.gif'))
          ),
          child: new Center(
           child: generateMenu(context)
          ),
        )
      )
    );
  }
}

