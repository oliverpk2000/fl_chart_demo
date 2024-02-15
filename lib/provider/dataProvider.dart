import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  List<List<double>> data = [
    [1, 1],
    [2, 3],
    [3, 6],
    [4, 2],
    [5, 4],
    [6, 3],
  ];

  void addDataPoint(double pointX, double pointY) {
    data.add([pointX, pointY]);
    notifyListeners();
  }
}
