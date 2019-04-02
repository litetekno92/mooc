import 'package:flutter/material.dart';
import 'models/category_model.dart';
import 'services/category_services.dart';
import 'dart:async';
import 'widgets/mywidget.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text(title),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              
              Container( child:
              MyWidget(),
              ),
            ],
              
          ),
        ),
        body: new DefaultTabController(
          length: 3,
          child: new Scaffold(
            appBar: new AppBar(
              actions: <Widget>[],
              title: new TabBar(
                tabs: [
                  new Tab(icon: new Icon(Icons.directions_car)),
                  new Tab(icon: new Icon(Icons.directions_transit)),
                  new Tab(icon: new Icon(Icons.directions_bike)),
                ],
                indicatorColor: Colors.white,
              ),
            ),
            body: new TabBarView(
              children: [
                new Icon(Icons.directions_car,size: 50.0,),
                new Icon(Icons.directions_transit,size: 50.0,),
                new Icon(Icons.directions_bike,size: 50.0,),
              ],
            ),
          ),
        ));
  }
}