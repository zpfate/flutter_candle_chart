import 'package:flutter_candle_chart/model/candle_data.dart';
import 'package:flutter_candle_chart/style/chart_style.dart';

class PainterParams {

  final List<CandleData> candles;
  final double maxPrice;
  final double minPrice;
  final ChartStyle chartStyle;

  PainterParams({
    required this.candles,
    required this.maxPrice,
    required this.minPrice,
    this.chartStyle = const ChartStyle(),
  });


  double mainChartPrice(double y) {
    return mainChartHeight * (maxPrice - y) / (maxPrice - minPrice);
  }

  double get mainChartWidth {
    return 100;
  }

  double get mainChartHeight {
    return chartStyle.mainChartHeight;
  }


}
