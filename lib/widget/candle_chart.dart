import 'package:flutter/material.dart';
import 'package:flutter_candle_chart/logic/candle_logic.dart';
import 'package:flutter_candle_chart/model/candle_data.dart';
import 'package:flutter_candle_chart/model/painter_params.dart';
import 'package:flutter_candle_chart/style/chart_style.dart';
import 'package:flutter_candle_chart/widget/chart_painter.dart';
import 'package:get/get.dart';

class CandleChart extends StatefulWidget {
  final CandleLogic? logic;
  final List<CandleData> candles;
  final ChartStyle chartStyle;
  final int visibleCount;

  const CandleChart(
      {super.key,
      this.logic,
      this.candles = const [],
      this.visibleCount = 69,
      this.chartStyle = const ChartStyle()});

  @override
  State<CandleChart> createState() => _CandleChartState();
}

class _CandleChartState extends State<CandleChart> {
  /// 获取logic
  CandleLogic get _logic => widget.logic ?? Get.put(CandleLogic());

  @override
  void initState() {
    // TODO: implement initState
    _logic.initData(widget.candles);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {

      final size = constraints.biggest;
      final painterParams = PainterParams(
          size: size,
          candles: widget.candles,
          maxPrice: 60,
          minPrice: 30,
          chartStyle: const ChartStyle(candleWidth: 10));

      return GetBuilder<CandleLogic>(builder: (logic) {
        return CustomPaint(
          size: size,
          painter: ChartPainter(params: painterParams),
        );
      });
    });
  }
}
