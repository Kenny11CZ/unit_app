import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'menu.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  void SetupWindow() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  Widget build(BuildContext context) {
    SetupWindow();
    return new MaterialApp(
      title: 'Comap demo',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new LoadscreenPage(),
    );
  }
}

class LoadscreenPage extends StatefulWidget {
  LoadscreenPage({Key key}) : super(key: key);

  @override
  _LoadscreenPageSate createState() => new _LoadscreenPageSate();
}

class _LoadscreenPageSate extends State<LoadscreenPage> {
  Widget logo;
  bool setup = false;

  void setupLogo() {
    setup = true;
    logo = new FadeInImage(
      placeholder: new AssetImage('res/img/transparent.png'),
      image: new AssetImage('res/img/logo.png'),
      fadeInDuration: new Duration(seconds: 2),
    );
    new Timer(new Duration(seconds: 5), switchMenu);
  }

  void switchMenu() {
    print("aloha");
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new MenuScreen()),
    );
  }



  @override
  Widget build(BuildContext context) {
    if(!setup){
      setupLogo();
    }

    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child: logo
            ),
          ],
        ),
      ),
    );
  }
}
