import 'package:flutter/material.dart';
import 'package:quiz_show/screens/question_screen.dart';

void main() {
  debugShowCheckedModeBanner:
  false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyPage(),
    );
  }
}

class BodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        StartQuizButton(),
      ],
    );
  }
}

class StartQuizButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Center(
          child: InkWell(
            child: Container(
              child: Center(child: Text("Oyuna başla",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),)),
              margin: EdgeInsets.only(top: 10),
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5,
                    spreadRadius: 10,
                    offset: Offset(0, 3),
                  )
                ],
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QuestionScreen()));
            },
          ),
        ),
      ),
    );
  }
}
