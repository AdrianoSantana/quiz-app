import 'package:flutter/material.dart';
import 'package:quiz/screens/home_screen.dart';
import 'package:quiz/screens/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
            activeScreen == 'start-screen'
                ? HomeScreen(switchScreen)
                : QuestionScreen(),
      ),
    );
  }
}
