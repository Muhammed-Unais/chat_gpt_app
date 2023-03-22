import 'package:chat_gpt_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

Color scaffoldBackgroundColor = const Color(0xFF343541);
Color cardColor = const Color(0xFF444654);

final chatMessages = [
  {
    "msg": "Hello who are you",
    "index": 0,
  },
  {
    "msg":
        "Hello,I ajfhdjsfkjdskjfkjdshfjkdhfkjdshhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhm ChatGPT",
    "index": 1,
  },
  {
    "msg": "Hello who are you",
    "index": 0,
  },
  {
    "msg": "Hello,I am ChatGPT",
    "index": 1,
  },
  {
    "msg": "Hello who are you",
    "index": 0,
  },
  {
    "msg": "Hello,I am ChatGPT",
    "index": 1,
  },
];

List<String> models = [
  "Model1",
  "Model2",
  "Model3",
  "Model4",
  "Model5",
  "Model6",
];

List<DropdownMenuItem<String>>? get getModelItems {
  List<DropdownMenuItem<String>>? modelItems =
      List<DropdownMenuItem<String>>.generate(
    models.length, 
    (index) => DropdownMenuItem(
      value: models[index],
      child: TextWidget(
        label: models[index],
        fontsize: 15,
      ),
    ),
  );
  return modelItems;
}

