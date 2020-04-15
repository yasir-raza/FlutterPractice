 import 'package:flutter/cupertino.dart';

class CounterModel extends ChangeNotifier{
  int _count = 0; // _ to make it private
  int get getCount => _count;
  void incrementCounter(){
    _count++;
    notifyListeners();
  }
}