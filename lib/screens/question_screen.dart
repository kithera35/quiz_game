import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quiz_show/data/question_data.dart';
import 'package:quiz_show/models/question_model.dart';
import 'result_screen.dart';

class QuestionScreen extends StatefulWidget {
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen>
    with SingleTickerProviderStateMixin {
  List<QuestionModel> _questions;

  int currentQuestionIndex = 0;
  int correct = 0, incorrect = 0, notAttempted = 0, points = 0;

  double beginAnim = 0.0;
  double endAnim = 1.0;

  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _questions = getQuestion();

    animationController =
        AnimationController(duration: const Duration(seconds: 10), vsync: this)
          ..addListener(() {
            setState(() {});
          });
    animation =
        Tween(begin: beginAnim, end: endAnim).animate(animationController);

    startAnimation();

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        notAttempted++;
        nextQuestion();
      }
    });
  }

  startAnimation() {
    animationController.forward();
  }

  stopAnimation() {
    animationController.stop();
  }

  resetAnimation() {
    animationController.reset();
  }

  void nextQuestion() {
    if (currentQuestionIndex < _questions.length - 1) {
      currentQuestionIndex++;
      resetAnimation();
      startAnimation();
    } 
    else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => ResultScreen(
                    points: points,
                    notAttempted:notAttempted,
                    correct: correct,
                    incorrect: incorrect,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
            child: Row(
              children: [
                Text(
                  "${currentQuestionIndex + 1}/${_questions.length} Soru",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  "${points} Puan",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Text(
            "${_questions[currentQuestionIndex].getQuestion()}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          LinearProgressIndicator(
            value: animation.value,
          ),
          SizedBox(
            height: 20,
          ),
          CachedNetworkImage(
            imageUrl: _questions[currentQuestionIndex].getImageUrl(),
            placeholder: (context, url) => CircularProgressIndicator(),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_questions[currentQuestionIndex].getAnswer() ==
                            "True") {
                          points += 10;
                          correct++;
                        } else {
                          points -= 10;
                          incorrect++;
                        }
                        nextQuestion();
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Center(
                        child: Text(
                          "Doğru",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_questions[currentQuestionIndex].getAnswer() ==
                            "False") {
                          points += 10;
                          correct++;
                        } else {
                          points -= 10;
                          incorrect++;
                        }
                        nextQuestion();
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Center(
                        child: Text(
                          "Yanlış",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
