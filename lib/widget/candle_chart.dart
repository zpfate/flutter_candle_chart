
import 'package:flutter/material.dart';
import 'package:flutter_candle_chart/model/candle_data.dart';
import 'package:flutter_candle_chart/style/chart_style.dart';

class CandleChart extends StatefulWidget {

  final List<CandleData> candles;
  final ChartStyle chartStyle;
  final int visibleCount;
  const CandleChart({super.key,
    this.candles = const [],
    this.visibleCount = 69,
    this.chartStyle = const ChartStyle()});

  @override
  State<CandleChart> createState() => _CandleChartState();
}

class _CandleChartState extends State<CandleChart> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {

      return Container();
    });
  }
}

