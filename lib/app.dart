import 'package:flutter/material.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawer Layout with Tabs',
      theme: new ThemeData(
        primaryColor: Colors.green,
      ),
      home: MyHomePage(title: "Drawer Layout with Tabs"),
    );
  }
}
