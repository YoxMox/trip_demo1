import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String tripText = 'How many people';

  void changeTripText(){
    tripText = "How many people do you know";
    notifyListeners();
  }
}