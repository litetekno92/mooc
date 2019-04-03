import 'package:flutter/material.dart';
import 'models/category_model.dart';
import 'services/category_services.dart';
import 'dart:async';
import 'widgets/mywidget.dart';
import 'utils/data.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  // final List<String> categories =[];
  
  // Future _getData() async {
  //   final categories = await  Data.getData();
    
  // }
  // _getData();

  // final widCategories=List<Widget>.generate(categories.length, (int index) {
  //                    // print(categories[index]);
  //                     return new Tab(
  //                         icon: Icon(Icons.directions_car),
  //                         text: categories[index]
  //                         );
  // Future getImage() async {
  //   var image = await ImagePicker.pickImage(source: ImageSource.camera);

  //   setState(() {
  //     _image = image;
  //   });
  // }

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
                  // new Tab(icon: new Icon(Icons.directions_car)),
                  // new Tab(icon: new Icon(Icons.directions_transit)),
                  // new Tab(icon: new Icon(Icons.directions_bike)),
                  MyWidget(),
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