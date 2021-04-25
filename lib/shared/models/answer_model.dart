import 'dart:convert';

import 'package:DevQuiz/shared/models/question_model.dart';

class AnswerModel {
  final String title;
  final bool isRight;

  AnswerModel({
    required this.title,
    this.isRight = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'isRight': isRight,
    };
  }

  factory AnswerModel.fromMap(Map<String, dynamic> map) {
    return AnswerModel(
      title: map['title'],
      isRight: map['isRight'] ?? false,
    );
  }

  String fromJson(String source) => jsonEncode(toMap());

  factory AnswerModel.toJson(String source) => json.decode(source);
}
