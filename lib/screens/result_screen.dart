import 'package:flutter/material.dart';

import 'question_screen.dart';

class ResultScreen extends StatelessWidget {
  int correct, incorrect, points, notAttempted;

  ResultScreen({this.correct, this.incorrect, this.notAttempted, this.points});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text("Doğru cevap sayısı : ${correct} ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
            Text("Yanlış cevap sayısı :${incorrect} ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
            Text("Cevaplanmayan soru sayısı :${notAttempted} ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
            Text("Toplam puan :${points} ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)
        ],
      ),
          )),
    );
  }
}
