import 'package:flutter/material.dart';
import 'package:flutter_candle_chart/logic/candle_logic.dart';
import 'package:flutter_candle_chart/model/candle_data.dart';
import 'package:flutter_candle_chart/model/candle_enum.dart';
import 'package:flutter_candle_chart/style/candle_painter_params_tween.dart';
import 'package:flutter_candle_chart/style/chart_style.dart';
import 'package:flutter_candle_chart/widget/candle_chart_painter.dart';
import 'package:get/get.dart';

class CandleChart extends StatefulWidget {
  final CandleLogic? logic;
  final List<CandleData> candles;
  final ChartStyle style;
  final VoidCallback? onDoubleTap;
  final LongPressCandleCallback? onLongPressed;

  const CandleChart({
    super.key,
    this.logic,
    this.candles = const [],
    this.style = const ChartStyle(),
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
    _logic.init(
      widget.candles,
      chartStyle: widget.style,
    );
    super.initState();
  }

  late Size _size;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      _size = constraints.biggest;
      _logic.handleResize(_size);

      return GetBuilder<CandleLogic>(builder: (logic) {
        return _gestureWidget();
      });
    });
  }

  Widget _gestureWidget() {

    return GestureDetector(

      onDoubleTap: widget.onDoubleTap,

      onLongPressStart: (details) {
        if (_logic.gestureState.isNormal) {
          _logic.gestureState = GestureState.longPress;
          _handleLongPress(details.localPosition);
          _logic.update();
        }
        debugPrint("长按开始---onLongPressStart");
      },

      onLongPressMoveUpdate: (details) {
        debugPrint("长按中---onLongPressMoveUpdate");
        _handleLongPress(details.localPosition);
      },

      onLongPressEnd: (details) {
        debugPrint("长按结束--onLongPressEnd");
        _logic.gestureState = GestureState.normal;
        _logic.params.tapPosition = null;
        _logic.update();
      },

      onHorizontalDragStart: (details) {
        if (_logic.gestureState.isNormal) {
          _logic.gestureState = GestureState.drag;
          _handleHorizontalDragStart(details.localPosition);
        }
        debugPrint("平移开始--onHorizontalDragStart");
      },

      onHorizontalDragUpdate: (details) {
        _handleHorizontalDragUpdate(details.localPosition);
        // debugPrint("平移中--onHorizontalDragUpdate");
      },

      onHorizontalDragEnd: (details) {
        _logic.gestureState = GestureState.normal;
        debugPrint("平移结束--onHorizontalDragEnd");
      },

      onScaleStart: (details) {
        if (_logic.gestureState.isNormal) {
          _logic.gestureState = GestureState.scale;
        }
        debugPrint("缩放开始--onScaleStart");
      },

      onScaleUpdate: (details) {
        debugPrint("缩放中--onScaleUpdate");
        debugPrint("scale === ${details.scale}");
        _logic.handleScale(details);
      },

      onScaleEnd: (details) {
        debugPrint("缩放结束--onScaleEnd");
        _logic.gestureState = GestureState.normal;
      },

      child: TweenAnimationBuilder(
          tween: CandlePainterParamsTween(end: _logic.params),
          duration: const Duration(milliseconds: 300),
          builder: (context, animateParams, child) {
            _logic.prevParams = _logic.params;
            return CustomPaint(
              size: _size,
              painter: CandleChartPainter(params: _logic.params),
            );
          }),
    );
  }

  /// 处理
  void _handleLongPress(Offset localPosition) {
    _logic.params.tapPosition = localPosition;

    final dx = _logic.params.tapPosition!.dx;
    final index = _logic.params.getIndexFromOffset(dx);

    if (index < 0 || index >= _logic.params.candles.length) {
      return;
    }

    final candle = _logic.params.candles[index];
    widget.onLongPressed?.call(candle);
    _logic.update();
  }

  late Offset _dragStartPoint;

  _handleHorizontalDragStart(Offset focalPoint) {
    _dragStartPoint = focalPoint;
  }

  /// 处理平移
  void _handleHorizontalDragUpdate(Offset focalPoint) {
    final dx = (focalPoint - _dragStartPoint).dx * -1;
    _dragStartPoint = focalPoint;
    _logic.startOffset += dx;
    _logic.startOffset = _logic.startOffset.clamp(0, _logic.maxOffsetX);
    _logic.handleResize(_size);
  }

  void _handleScaleStart(Offset focalPoint) {

  }

}
