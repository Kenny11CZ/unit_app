import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class AboutUsScreen extends StatefulWidget{
  @override
  _AboutUsScreenState createState() => new _AboutUsScreenState();
}


class _AboutUsScreenState extends State<AboutUsScreen>{

  @override
  Widget build(BuildContext context) {
    var headerTs = new TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 40.0);
    var ts = new TextStyle(color: Colors.black);
    return new Scaffold(
      
      body: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
          children: <Widget>[
            new Text("About Us", style: headerTs,),

            new Text("ComAp designs and manufactures control products for power generation and diesel/gas engines, along with associated accessories and software. We’re leading the way in providing intelligent electronic control products and solutions that are highly flexible, intuitive and scalable.", style: ts,),
            new Text("We ensure that we are connected with our customers so they receive world-class advice at every stage of our relationship, as well as unrivalled value through close collaboration. This allows us to fulfil their existing needs, as well as understand and meet their future requirements.", style: ts),
            new Text("Continuous investment in our specialist global network enables us to maintain excellence in customer service, empowering our people and partners to deliver the highest standards of technical expertise and local support to our customers across the world.", style: ts),
          ],
        ),
      )
    );
  }
}
