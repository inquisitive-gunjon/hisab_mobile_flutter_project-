import 'package:flutter/cupertino.dart';

import '../data/model/chartEntry.dart';

class ChartDataProvider extends ChangeNotifier {
  List<ChartEntry> _chartData = [];

  List<ChartEntry> get chartData => _chartData;

  void setChartData(List<ChartEntry> data) {
    _chartData = data;
    notifyListeners();
  }
  void addChartData(ChartEntry entry) {
    _chartData.add(entry);
    notifyListeners();
  }
}