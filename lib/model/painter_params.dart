import 'dart:ui';
import 'package:flutter_candle_chart/model/candle_data.dart';
import 'package:flutter_candle_chart/style/chart_style.dart';

class PainterParams {

  final List<CandleData> candles;
  final double maxPrice;
  final double minPrice;
  final int maxCount;
  final int minCount;
  final Size size;
  final ChartStyle chartStyle;

  PainterParams({
    required this.candles,
    required this.maxPrice,
    required this.minPrice,
    this.maxCount = 200,
    this.minCount = 9,
    required this.size,
    this.chartStyle = const ChartStyle(),
  });

  double mainChartPrice(double y) {
    return mainHeight * (maxPrice - y) / (maxPrice - minPrice);
  }

  double get width {
    return size.width;
  }

  double get mainHeight {
    return chartStyle.mainChartHeight;
  }

}
