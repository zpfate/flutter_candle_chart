import 'dart:math';
import 'dart:ui';
import 'package:flutter_candle_chart/model/candle_data.dart';
import 'package:flutter_candle_chart/model/candle_enum.dart';
import 'package:flutter_candle_chart/model/candle_painter_params.dart';
import 'package:flutter_candle_chart/style/chart_style.dart';
import 'package:get/get.dart';

class CandleLogic extends GetxController {
  GestureState gestureState = GestureState.normal;

  List<CandleData> candles = [];
  late CandlePainterParams painterParams;

  /// 起始offset
  double startOffset = 0;
  double width = 0.0;

  Size? size;

  /// 初始化数据
  void initData(List<CandleData> candles) {
    this.candles = candles;
  }

  /// 处理大小变化
  void handleResize(Size size, int visibleCount) {
    if (this.size == size) {
    } else {
      this.size = size;
      final candleWidth = size.width / visibleCount;
      startOffset = (candles.length - visibleCount) * candleWidth;
      startOffset = max(startOffset, 0);

      final int start =
          min((startOffset / candleWidth).floor(), candles.length);
      final int count = (size.width / candleWidth).ceil();
      final int end = (start + count).clamp(start, candles.length);

      final candlesInRange = candles.getRange(start, end).toList();

      if (end < candles.length) {
        // Put in an extra item, since it can become visible when scrolling
        final nextItem = candles[end];
        candlesInRange.add(nextItem);
      }

      double maxPrice = 0.0;
      double minPrice = double.maxFinite;

      /// 计算一下最大值和最小值
      if (candlesInRange.isNotEmpty) {
        for (var candle in candlesInRange) {
          maxPrice = max(maxPrice, candle.maxValue);
          minPrice = min(minPrice, candle.minValue);
        }
      }

      final halfCandle = candleWidth / 2;
      final fractionCandle = startOffset - start * candleWidth;
      final xShift = halfCandle - fractionCandle;

      painterParams = CandlePainterParams(
          xShift: xShift,
          candles: candlesInRange,
          maxPrice: maxPrice,
          minPrice: minPrice,
          size: size,
          chartStyle: ChartStyle(
            candleWidth: candleWidth,
          ));

      update();
    }
  }

  void handleScale() {}

  void handleHorizontalDrag() {}

  void calculateChart() {}

  /// 刷新数据
  void refreshData(
      List<CandleData> data, int visibleCount, ChartStyle chartStyle) {
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
