import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:convert';

import 'package:json_converter/json_model.dart';

class JsonConverter extends StatefulWidget {
  @override
  JsonConverterState createState() => JsonConverterState();
}

class JsonConverterState extends State<JsonConverter> {
  @override
  void initState() {
    super.initState();
    // _getPermission();
    loadData();
  }

  loadJson() async {
    String data =
        await DefaultAssetBundle.of(context).loadString("assets/ft_1.json");
    return data;

  }

  Future loadData() async {
  var jsonString = await loadJson();
  print(jsonString);
  final jsonResponse = json.decode(jsonString);
  GameData gameData = new GameData.fromJson(jsonResponse);
  print(gameData.problems);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Json Convert")),
      body: Container(
        color: Colors.green,
      ),
    );
  }
}
