
import 'dart:math';
import 'package:pharm_u/questions.dart';

class QuestionDatabase {
  Random random = new Random();
  int count = 0;

  List<Questions> _questionBank = [
    Questions(question: 'What is the brand name for Tizandine', answer: 'Zanaflex'),
    Questions(question: 'What is the brand name for Methocarbamol', answer: 'Robaxin'),
    Questions(question: 'What is the brand name for Baclofen', answer: 'Gablofen'),
    Questions(question: 'What is the brand name for Cyclobenzaprine', answer: 'Flexeril'),
    Questions(question: 'What is the brand name for Carisoprodol', answer: 'Soma'),
    Questions(question: 'What is the brand name for Estrogen', answer: 'Premarin'),
    Questions(question: 'What is the brand name for Insulinglargine', answer: 'Lantus'),
    Questions(question: 'What is the brand name for Insulindetemir', answer: 'Levemir'),
    Questions(question: 'What is the brand name for Sumatriptan', answer: 'Imitrex'),
    Questions(question: 'What is the brand name for Diclofenac', answer: 'Voltaren'),
    Questions(question: 'What is the brand name for Nabumetone', answer: 'Relafen'),
    Questions(question: 'What is the brand name for Ibuprofen', answer: 'Advil'),
    Questions(question: 'What is the brand name for Naproxen', answer: 'Aleve'),
    Questions(question: 'What is the brand name for Meloxicam', answer: 'Mobic'),
    Questions(question: 'What is the brand name for Celecoxib', answer: 'Celebrex'),
    Questions(question: 'What is the brand name for Dicyclomine', answer: 'Bentyl'),
    Questions(question: 'What is the brand name for Testosterone', answer: 'Androgel'),
    Questions(question: 'What is the brand name for Zolpidem', answer: 'Ambien'),
    Questions(question: 'What is the brand name for Tolterodine', answer: 'Detrol'),
    Questions(question: 'What is the brand name for Oxybutynin', answer: 'Ditropan'),
  ];



  String getQuestion() {
    return _questionBank[count].questionText;
  }

  String getAnswer() {

    return _questionBank[count].questionAnswer;
  }

  String getAnswer2() {
    return _questionBank[count + 1].questionAnswer;
  }

  String getAnswer3() {
    return _questionBank[count + 2].questionAnswer;
  }

  int getDataBaseLength() {
    return _questionBank.length;
  }


  void nextQuestion() {
    count++;
  }




}