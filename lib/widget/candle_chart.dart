import 'package:flutter/material.dart';
import 'package:flutter_candle_chart/logic/candle_logic.dart';
import 'package:flutter_candle_chart/model/candle_data.dart';
import 'package:flutter_candle_chart/model/candle_enum.dart';
import 'package:flutter_candle_chart/style/chart_style.dart';
import 'package:flutter_candle_chart/widget/candle_chart_painter.dart';
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

  // 获取logic
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
      _logic.handleResize(size, widget.visibleCount);

      return GetBuilder<CandleLogic>(builder: (logic) {
        return _gestureWidget(size);
      });
    });
  }

  Widget _gestureWidget(Size size) {

    return GestureDetector(

      onDoubleTap: widget.onDoubleTap,
      onLongPressStart: (details) {

        if (_logic.gestureState.isNormal) {
          _logic.gestureState = GestureState.longPress;
          handleLongPressed(details.localPosition);
          _logic.update();
        }
        debugPrint("长按开始---onLongPressStart");

      },
      onLongPressMoveUpdate: (details) {
        debugPrint("长按中---onLongPressMoveUpdate");
        handleLongPressed(details.localPosition);
      },
      onLongPressEnd: (details) {
        debugPrint("长按结束--onLongPressEnd");

        _logic.gestureState = GestureState.normal;
        _logic.painterParams.tapPosition = null;
        _logic.update();

      },
      onHorizontalDragStart: (details) {
        if (_logic.gestureState.isNormal) {

        }
        debugPrint("平移开始--onHorizontalDragStart");
      },
      onHorizontalDragUpdate: (details) {
        debugPrint("平移中--onHorizontalDragUpdate");
      },
      onHorizontalDragEnd: (details) {
        debugPrint("平移结束--onHorizontalDragEnd");
      },
      onScaleStart: (details) {
        if (_logic.gestureState.isNormal) {

        }
        debugPrint("缩放开始--onScaleStart");
      },
      onScaleUpdate: (details) {
        debugPrint("缩放中--onScaleUpdate");
      },
      onScaleEnd: (details) {
        debugPrint("缩放结束--onScaleEnd");
      },
      child: CustomPaint(
        size: size,
        painter: CandleChartPainter(params: _logic.painterParams),
      ),
    );
  }


  void handleLongPressed(Offset localPosition) {

    _logic.painterParams.tapPosition = localPosition;

    final dx = _logic.painterParams.tapPosition!.dx;
    final index = _logic.painterParams.getIndexFromOffset(dx);

    if (index < 0 || index >= _logic.painterParams.candles.length) {
      return;
    }

    final candle = _logic.painterParams.candles[index];
    widget.onLongPressed?.call(candle);
    _logic.update();
  }

}
