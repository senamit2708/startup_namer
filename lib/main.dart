import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//basic of widget..how to run your first code in flutter
//main is the starting point of the flutter
//inside main method runApp method is called for the starting of the app.
//first widget is Center
//child widget of center is text
//hint of closing of widget is always shown in comment line
void main() {
  runApp(
    Center(
      child: Text(
        'Hello, world!',
        textDirection: TextDirection.rtl,
      ),
    ),
  );
}