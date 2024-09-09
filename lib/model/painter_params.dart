import 'package:flutter_candle_chart/model/candle_data.dart';
import 'package:flutter_candle_chart/style/chart_style.dart';

class PainterParams {
  final List<CandleData> candles;
  final ChartStyle chartStyle;

  PainterParams({
    required this.candles,
    this.chartStyle = const ChartStyle(),
  });
}
