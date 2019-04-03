import 'dart:async';
import 'package:flutter/material.dart';

class Data {

static Future<List<String>> getData() async {
    // final rvalues = new List<String>();
    // if (rvalues !=null) return rvalues;
    var values = new List<String>();
    values.add("Horses");
    values.add("Goats");
    values.add("Chickens");

    //throw new Exception("Danger Will Robinson!!!");

    await new Future.delayed(new Duration(seconds: 3));

    // rvalues = values;
 
    return values;
  }

}