import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget{
  final VoidCallback resetQuiz;
  const ResultsScreen({super.key, required this.chooseAnswers, required this.resetQuiz});
  final List<String> chooseAnswers;


  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer' :questions[i].answers[0],
          'user_answer': chooseAnswers[i],
        },
      );
    }

    return summary;
  }

  

  @override
Widget build(context) {
  final summaryData = getSummaryData(); 

  final numTotalQuestions = questions.length;
  final numCorrectQuestions = summaryData.where(
    (data){
      return data['correct_answer'] == data['user_answer'];
    }
  ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly',
              style: TextStyle(
                color:Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
            'assets/images/refresh--v2.png',
            width: 25,
            color: Color.fromARGB(175, 255, 255, 255),
          ),
                TextButton(
                onPressed: resetQuiz,
                child: const Text(
                  'Restart Quiz',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
              ),
              ],
            )
          ],
        ),
      ),
    );
  }

}


