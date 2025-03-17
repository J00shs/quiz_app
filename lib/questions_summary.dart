import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary({super.key, required this.summaryData});
  
  final List<Map<String,Object>> summaryData;

  // TODO: Design widget for summary page
  @override
  Widget build(context){
    return Column(
      children: summaryData.map(
        (data){
          return Row(
            children:[
              CircleAvatar(
                backgroundColor: data['user_answer']== data['correct_answer'] ? Color.fromARGB(500,120, 189, 248):Color.fromARGB(450,228, 120, 247),
                child: Text(
                  ((data['question_index'] as int) +1).toString(),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Column(
                children:[
                  Text(data['question'] as String),
                  const SizedBox(height:5,),
                  Text(
                    data['user_answer'] as String,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    ),
                  Text(
                    data['correct_answer'] as String,
                    style: TextStyle(
                      color: Color.fromARGB(500,120, 189, 248),
                    )
                  ),
                ],
              )
            ],
          );
        }
      ).toList(),
    );
  }
}
