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
  
  for(int i=0;i<gameData.problems.length;i++){
    List<String> temp=[];
  gameData.problems[0].forEach((f){
   temp.add('"$f"');
  });
    print('[ "1","1","${i+1}",$temp,${gameData.isMinus},${gameData.showAnswer}] ');
  }
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
