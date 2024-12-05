
import 'package:flutter/material.dart';
import 'package:flutter_candle_chart/model/candle_painter_params.dart';
import 'package:flutter_candle_chart/render/main_render.dart';

class CandleChartPainter extends CustomPainter {

  final CandlePainterParams params;
  CandleChartPainter({
    required this.params,
  });

  MainRender _mainRender = MainRender();

  @override
  void paint(Canvas canvas, Size size) {

    canvas.save();
    // canvas.translate(params.xShift, 0);

    /// Draw main chart
    MainRender.drawMainChart(canvas, size, params);

    /// Draw tap highlight
    _drawTapHighlight(canvas, params);

    canvas.restore();

  }

  void _drawTapHighlight(Canvas canvas, CandlePainterParams params) {

    /// filter invalid offsetX
    if (params.tapPosition == null || params.tapPosition!.dx > params.width || params.tapPosition!.dx < 0) {
      return;
    }
    final pos = params.tapPosition!;
    final index = params.getIndexFromOffset(pos.dx);
    final candle = params.candles[index];
    canvas.save();
    canvas.drawLine(
        Offset(index * params.candleWidth, 0.0),
        Offset(index * params.candleWidth, params.size.height),
        Paint()
          ..strokeWidth = params.candleWidth.clamp(1, 4)
          ..shader = LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              params.style.selectionHighlightColor.withOpacity(0.90),
              params.style.selectionHighlightColor.withOpacity(0.99),
              params.style.selectionHighlightColor.withOpacity(0.90),
            ],
          ).createShader(Rect.fromLTWH(index * params.candleWidth, 0,
              params.candleWidth, params.size.height))
      ..color = params.style.selectionHighlightColor
    );
    
    /// 绘制横向虚线
    _drawHorizontalLine(canvas);
    canvas.restore();
  }
  
  void _drawHorizontalLine(Canvas canvas) {
    /// 绘制横线
    final Paint paint = Paint()
      ..color = params.style.trendLineColor
      ..strokeWidth = 1 // Height of the dashed line
      ..strokeCap = StrokeCap.square;

    const double dashWidth = 1.0;
    const double dashSpace = 3.0;
    double currentX = 0.0;

    double validY = params.tapPosition!.dy.clamp(0, params.mainHeight);

    while (currentX < params.width) {
      canvas.drawLine(
        Offset(currentX, validY),
        Offset(currentX + dashWidth, validY),
        paint,
      );
      currentX += dashWidth + dashSpace;
    }
  }
  
  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}