import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          ////////////////////////////
          //Create Backgrond
          decoration: const BoxDecoration(
            
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
              Color.fromARGB(255, 78, 13, 151),
              Color.fromARGB(255, 107, 15, 168),
            ],
            ),
          ),
           ////////////////////////////
      
          child: StartScreen()
          ),
      ),
    ),
  );
}