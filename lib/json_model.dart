class GameData {
  bool isRandom;
  String format;
  bool isMinus;
  bool showAnswer;
  bool onlyShowSubtrahend;

  List<List<String>> problems;

  GameData(
      {this.format,
      this.isMinus,
      this.isRandom,
      this.problems,
      this.showAnswer,
      this.onlyShowSubtrahend});

  factory GameData.fromJson(Map<String, dynamic> parsedJson) {
    var streetsFromJson = parsedJson['Problems'];
   
var problemList = parsedJson.map((i) =>  List<String>.from(i));

    List<List<String>> problemSubList = new List<List<String>>.from(streetsFromJson);
    
    // List<List<String>> problemList =
    //     new List<List<String>>.from(problemSubList);

    return GameData(
        format: parsedJson['id'],
        isMinus: parsedJson['name'],
        isRandom: parsedJson['score'],
        problems: problemList,
        showAnswer: parsedJson['ShowAnswer'],
        onlyShowSubtrahend: parsedJson['OnlyShowSubtrahend']);
  }
}
