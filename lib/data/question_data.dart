import 'package:quiz_show/models/question_model.dart';

List<QuestionModel> getQuestion() {
    List<QuestionModel> questions = new List<QuestionModel>();
  QuestionModel questionModel = new QuestionModel();

  //1
  questionModel.setQuestion("Bir bebeğin yetişkinden daha fazla kemiği vardır");
  questionModel.setAnswer("True");
  questionModel.setImageUrl(
      "https://images.pexels.com/photos/789786/pexels-photo-789786.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  questions.add(questionModel);
  questionModel = new QuestionModel();

  //2
  questionModel.setQuestion("Köpek balığı gözünü kırpabilir");
  questionModel.setAnswer("True");
  questionModel.setImageUrl(
      "https://images.pexels.com/photos/726478/pexels-photo-726478.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //3
  questionModel.setQuestion("Amerikan dolarları fiberden yapılır");
  questionModel.setAnswer("False");
  questionModel.setImageUrl(
      "https://images.pexels.com/photos/259027/pexels-photo-259027.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //4
  questionModel.setQuestion("Sandviç ismi bir kasabadan gelmektedir");
  questionModel.setAnswer("True");
  questionModel.setImageUrl(
      "https://images.pexels.com/photos/1647163/pexels-photo-1647163.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //5
  questionModel.setQuestion("Kaplanın derisinde şeritler vardır");
  questionModel.setAnswer("True");
  questionModel.setImageUrl(
      "https://images.pexels.com/photos/302304/pexels-photo-302304.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //6
  questionModel.setQuestion("Devekuşu dünyadaki en büyük göze sahiptir");
  questionModel.setAnswer("False");
  questionModel.setImageUrl(
      "https://images.pexels.com/photos/60692/bird-animal-nature-strauss-60692.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //7
  questionModel.setQuestion("Günde ortalama 16 milyar e-mail postalanmaktadır");
  questionModel.setAnswer("False");
  questionModel.setImageUrl(
      "https://images.pexels.com/photos/374074/pexels-photo-374074.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  questions.add(questionModel);

  questionModel = new QuestionModel();

  //8
  questionModel.setQuestion("Bütün gorillerin kan grubu B'dir");
  questionModel.setAnswer("True");
  questionModel.setImageUrl(
      "https://images.pexels.com/photos/2657973/pexels-photo-2657973.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500");
  questions.add(questionModel);



  return questions;
}
