import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final void Function() switchScreen;
  HomeScreen(this.switchScreen, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      width: double.infinity,
      child: Column(
        spacing: 50,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            height: 300,
            color: Colors.white54,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: switchScreen,
            icon: Icon(Icons.arrow_right_alt, color: Colors.white),
            label: Text(
              'Start Quiz',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
