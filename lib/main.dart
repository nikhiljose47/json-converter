import 'package:flutter/material.dart';
import 'package:json_converter/json_converter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      home: JsonConverter(),
    );
  }
}


