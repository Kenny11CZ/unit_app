import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class ProductsScreen extends StatefulWidget{
  @override
  _ProductsScreenState createState() => new _ProductsScreenState();
}

Widget generateProduct(String name, String desc, ImageProvider image) {
  var nameTs = new TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0,);
  var descTs = new TextStyle(color: Colors.grey);
  return new Row(
    children: <Widget>[
      new Image(image: image, height: 150.0,),
      new Center(
          child:
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               new Text(name, style: nameTs,),
                new Text(desc, style: descTs,)
              ],
            ),
          )
    ],
  );
}

class _ProductsScreenState extends State<ProductsScreen>{

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
        child: new Center(
            child: new ListView(
                children: <Widget>[
                  generateProduct("Panel", "Sada generatoru, lorem ipsum dolor sit amet", new AssetImage('res/img/1.png')),
                  generateProduct("App", "Sada generatoru, lorem ipsum dolor sit amet", new AssetImage('res/img/2.png')),
                  generateProduct("Display", "Sada generatoru, lorem ipsum dolor sit amet", new AssetImage('res/img/3.png')),
                ],
            )
        ),
      ),
    );
  }
}
