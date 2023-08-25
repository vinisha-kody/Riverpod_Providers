import 'package:flutter/material.dart';

class ChangeProvider extends ChangeNotifier{

  int count=0;

  // the below method is used to increment the value of the count variable
  void incrementCounter()
  {
    count++;
    notifyListeners();
  }

}