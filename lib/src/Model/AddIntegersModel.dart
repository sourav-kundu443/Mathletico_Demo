class AddIntegersModel {
  late int id;
  late int quizType;
  late int quizFormat;
  late String name;
  late String questionProgram;
  late List<int> questionList;

  AddIntegersModel({
    required this.id,
    required this.quizType,
    required this.quizFormat,
    required this.name,
    required this.questionProgram,
    required this.questionList,
  });

  AddIntegersModel.fromJson(dynamic json) {
    id = json['id'];
    quizType = json['quiz_type'];
    quizFormat = json['quiz_format'];
    name = json['name'];
    questionProgram = json['question_program'];
    questionList =
        json['question_list'] != null ? json['question_list'].cast<int>() : [];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['quiz_type'] = quizType;
    map['quiz_format'] = quizFormat;
    map['name'] = name;
    map['question_program'] = questionProgram;
    map['question_list'] = questionList;
    return map;
  }
}
