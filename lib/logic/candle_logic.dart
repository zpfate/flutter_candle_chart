
import 'dart:ui';
import 'package:flutter_candle_chart/model/candle_data.dart';
import 'package:flutter_candle_chart/model/painter_params.dart';
import 'package:get/get.dart';

class CandleLogic extends GetxController {

  List<CandleData> candles = [];
  PainterParams? painterParams;
  double startOffset = 0;

  bool isScaling = false;
  bool isLongPressing = false;

  double width = 0.0;

  void initData(List<CandleData> candles) {

  }

  void handleResize(Size size) {

  }

  void refreshData(List<CandleData> data) {
    candles = data;
    update();
  }

  void loadData(List<CandleData> data) {
    candles.insertAll(0, data);
    update();
  }



  setWidth(double w) {
    width = w;
  }

  double get minCandleWidth {
    return 1;
  }

  double get maxCandleWidth {
    return 10;
  }

}
