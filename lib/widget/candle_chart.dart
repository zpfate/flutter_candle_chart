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
  final Function()? onDoubleTap;
  final Function(CandleData candleData)? onLongPressed;

  const CandleChart(
      {super.key,
      this.logic,
      this.candles = const [],
      this.visibleCount = 69,
      this.chartStyle = const ChartStyle(),
        this.onDoubleTap,
        this.onLongPressed,
      });

  @override
  State<CandleChart> createState() => _CandleChartState();
}

class _CandleChartState extends State<CandleChart> {
  /// 获取logic
  CandleLogic get _logic => widget.logic ?? Get.put(CandleLogic());

  @override
  void initState() {
    // TODO: implement initState
    _logic.refreshData(widget.candles);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {

      final size = constraints.biggest;
      _logic.handleResize(size);
      return GetBuilder<CandleLogic>(builder: (logic) {
        return _gestureWidget(size);
      });
    });
  }

  Widget _gestureWidget(Size size) {

    final painterParams = PainterParams(
        size: size,
        candles: widget.candles,
        maxPrice: 60,
        minPrice: 30,
        chartStyle: const ChartStyle(candleWidth: 10));

    return GestureDetector(
      onDoubleTap: widget.onDoubleTap,
      onLongPressStart: (details) {
        debugPrint("onLongPressStart");
      },
      onLongPressMoveUpdate: (details) {
        debugPrint("onLongPressMoveUpdate");
      },
      onLongPressEnd: (details) {
        debugPrint("onLongPressEnd");
      },
      onHorizontalDragStart: (details) {
        debugPrint("onHorizontalDragStart");
      },
      onHorizontalDragUpdate: (details) {
        debugPrint("onHorizontalDragUpdate");
      },
      onHorizontalDragEnd: (details) {
        debugPrint("onHorizontalDragEnd");
      },

      onScaleStart: (details) {
        debugPrint("onScaleStart");
      },
      onScaleUpdate: (details) {
        debugPrint("onScaleUpdate");
      },
      onScaleEnd: (details) {
        debugPrint("onScaleEnd");
      },
      child: CustomPaint(
        size: size,
        painter: ChartPainter(params: painterParams),
      ),
    );
  }

}
