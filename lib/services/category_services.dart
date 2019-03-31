import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:mooc/models/category_model.dart';

Future<String> _loadACategoryAsset() async {
  return await rootBundle.loadString('assets/json/category.json');
}

Future loadCategory() async {
  String jsonString = await _loadACategoryAsset();
  final jsonResponse = json.decode(jsonString);
  List<Category> categories = categoryFromJson(jsonString);
  return categories;
  // print(category.id);
}