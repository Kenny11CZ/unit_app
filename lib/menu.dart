import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class MenuScreen extends StatefulWidget {

  @override
  _MenuScreenState createState() => new _MenuScreenState();
}

Widget generateMenu() {
  var res = new Center(
      child: new Column(
        children: <Widget>[
          new RaisedButton(onPressed: null, )
        ],
      ),);
}

class _MenuScreenState extends State<MenuScreen> {

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: new Scaffold(
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("asdfghjkl")
            ],
          ),
        ),
      )
    );
  }
}

