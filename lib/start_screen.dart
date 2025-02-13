import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  //Make Constructor
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      //The column allows you to have multiple widgets
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assests/images/quiz-logo.png',
          width: 300,
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "Learn Flutter The Fun Way",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton( 
            onPressed: (){}, 
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
          child: Text("Start Quiz"))
        ],
      ),
      );
  }

}