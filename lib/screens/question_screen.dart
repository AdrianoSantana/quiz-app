import 'package:flutter/material.dart';
import 'package:quiz/components/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  void onAnswer() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The question', style: TextStyle(color: Colors.white)),
          SizedBox(height: 30),
          AnswerButton(answerText: 'Answer 1', onTap: onAnswer),
          AnswerButton(answerText: 'Answer 2', onTap: onAnswer),
          AnswerButton(answerText: 'Answer 3', onTap: onAnswer),
          AnswerButton(answerText: 'Answer 4', onTap: onAnswer),
        ],
      ),
    );
  }
}
