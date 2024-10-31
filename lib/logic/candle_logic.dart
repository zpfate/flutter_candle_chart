
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

  late Size size;

  /// 初始化数据
  void initData(List<CandleData> candles) {

  }

  /// 处理大小变化
  void handleResize(Size size) {
    this.size = size;

    // startOffset = candles.length * painterParams!.chartStyle.candleWidth;
  }

  /// 刷新数据
  void refreshData(List<CandleData> data) {
    candles = data;
    update();
  }


  /// 加载更多数据
  void loadData(List<CandleData> data) {
    candles.insertAll(0, data);
    update();
  }

  /// 设置宽度
  setWidth(double w) {
    width = w;
  }

  /// 获取蜡烛最小宽度
  double get minCandleWidth {
    return 1;
  }

  /// 获取蜡烛最大宽度
  double get maxCandleWidth {
    return 10;
  }

}
