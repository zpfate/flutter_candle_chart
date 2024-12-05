import 'dart:ui';
import 'package:flutter_candle_chart/model/candle_data.dart';
import 'package:flutter_candle_chart/style/chart_style.dart';

class CandlePainterParams {
  final double xShift;
  final List<CandleData> candles;
  final double maxPrice;
  final double minPrice;
  final int maxCount;
  final int minCount;
  final double candleWidth;

  final Size size;
  Offset? tapPosition;
  double? startOffset;

  final ChartStyle chartStyle;

  CandlePainterParams({
    required this.xShift,
    required this.candles,
    required this.maxPrice,
    required this.minPrice,
    this.maxCount = 200,
    this.minCount = 9,
    this.candleWidth = 1.0,
    required this.size,
    this.tapPosition,
    this.startOffset,
    this.chartStyle = const ChartStyle(),
  });

  double mainChartPrice(double y) {
    return mainHeight * (maxPrice - y) / (maxPrice - minPrice);
  }

  int getIndexFromOffset(double dx) {
    final adjustX = dx - xShift + candleWidth / 2;
    return adjustX ~/ candleWidth;
  }

  double get width {
    return size.width;
  }

  double get mainHeight {
    return chartStyle.mainChartHeight;
  }


}
