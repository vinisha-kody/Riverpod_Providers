import 'package:flutter/material.dart';


class ChangeProvider extends ChangeNotifier{

  int count=0;

  void incrementCounter()
  {
    count++;
    notifyListeners();
  }

}