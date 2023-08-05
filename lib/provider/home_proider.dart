import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {



  List items = [];


  add1(item){
    items.add(item);
    notifyListeners();
  }


  remove1(index){
    items.removeAt(index);
    notifyListeners();
  }
}