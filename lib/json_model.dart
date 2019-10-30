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
    var problemsFromJson = parsedJson['Problems'] as List;
    
    var problemList= problemsFromJson.map((f)=>new List<String>.from(f)).toList();
    
    return GameData(
        format: parsedJson['id'],
        isMinus: parsedJson['IsMinus'],
        isRandom: parsedJson['score'],
        problems: problemList,
        showAnswer: parsedJson['ShowAnswer'],
        onlyShowSubtrahend: parsedJson['OnlyShowSubtrahend']);
  }
}
