class QuestionModel {
  String question;
  String answer;
  String imageUrl;

  QuestionModel({this.question, this.answer, this.imageUrl});

  void setQuestion(String question){
this.question=question;
  }
 void setAnswer(String answer){
this.answer=answer;
  }

 void setImageUrl(String imageUrl){
this.imageUrl=imageUrl;
  }

String getQuestion(){
  return question;
}
String getAnswer(){
  return answer;
}
String getImageUrl(){
  return imageUrl;
}

}


