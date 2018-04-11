import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import 'game.dart';
import 'products.dart';
import 'about.dart';

class MenuScreen extends StatefulWidget {

  @override
  _MenuScreenState createState() => new _MenuScreenState();
}


void test() {}


class _MenuScreenState extends State<MenuScreen> {

  void gotoGame() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new GameMenuScreen()),
    );
  }

  void gotoProducts() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new ProductsScreen()),
    );
  }

  void gotoAbout() {
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new AboutUsScreen()),
    );
  }

  Widget middleMenu() {
    return new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Image(image: new AssetImage('res/img/logo.png'), height: 100.0,),
          new RaisedButton(onPressed: gotoGame, child: const Text('Start'), padding: new EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0), textColor: Theme.of(context).textTheme.title.color,),
          new RaisedButton(onPressed: gotoProducts, child: const Text('Produkty'), padding: new EdgeInsets.fromLTRB(38.0, 0.0, 38.0, 0.0), textColor: Theme.of(context).textTheme.title.color),
          new RaisedButton(onPressed: gotoAbout, child: const Text('O společnosti'), padding: new EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0), textColor: Theme.of(context).textTheme.title.color)

        ],
      ),
    );
  }

  Widget topMenu() {
    return new Stack(
      children: <Widget>[
        new Positioned(child: new IconButton(icon: new Icon(Icons.trending_up), onPressed: test,), left: 5.0,),
        new Positioned(child: new IconButton(icon: new Icon(Icons.settings), onPressed: test,), right: 5.0,),
      ],
    );

  }

  Widget generateMenu() {
    var res = new Stack(
      children: <Widget>[
        middleMenu(),
        topMenu(),
      ],
    );
    return res;
  }


  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: new Scaffold(
        body: new Container(
//          decoration: new BoxDecoration(
//            image: new DecorationImage(image: new AssetImage('res/img/giphy.gif'))
//          ),
          child: new Center(
           child: generateMenu()
          ),
        )
      )
    );
  }
}

