import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';


void test() {}

class GameMenuScreen extends StatefulWidget{
  @override
  _GameMenuScreenState createState() => new _GameMenuScreenState();
}

class _GameMenuScreenState extends State<GameMenuScreen>{

  void goBackToTheShadows(){
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new GameScreen()),
    );
//    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(image: new AssetImage('res/img/hra3.png'))
        ),
        child: new Center(
          child: new Stack(
            children: <Widget>[
              new Positioned(child: new FlatButton(onPressed: goBackToTheShadows, child: new Text(""), splashColor: Colors.transparent, ), top: 36.0, right: 100.0,)
            ],
          )
        ),
      ),
    );
  }
}

class GameScreen extends StatefulWidget {

  @override
  _GameScreenState createState() => new _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  Future<bool> _onWillPop() {
    Navigator.pop(context);
    Navigator.pop(context);
    return new Future(false);
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _onWillPop,
      child: new Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage('res/img/hra2.png'))
        ),
        child: new Center(
            child: new Stack(
              children: <Widget>[
                new Positioned(child: new FlatButton(onPressed: test, child: new Text(""), splashColor: Colors.transparent, ), top: 36.0, right: 100.0,)
              ],
            )
        ),
      ),
    );
  }
}
