import 'dart:math';
import 'dart:ui';
import 'package:flutter_candle_chart/model/candle_painter_params.dart';
import 'package:flutter_candle_chart/render/chart_render.dart';

class MainRender with ChartRender {

  static void drawMainChart(Canvas canvas, Size size, CandlePainterParams params) {

    canvas.save();
    canvas.clipRect(Offset.zero & Size(params.width, params.mainHeight));
    _drawCandles(canvas, size, params);
    canvas.restore();

  }

  static void _drawCandles(Canvas canvas, Size size, CandlePainterParams params) {
    for (int i = 0; i < params.candles.length; i++) {
      _drawSingleDay(canvas, params, i, size);
    }
  }

  static void _drawSingleDay(
      Canvas canvas, CandlePainterParams params, int i, Size size) {
    final candleWidth = params.candleWidth;
    final candle = params.candles[i];
    final x = i * candleWidth;
    final thickWidth = max(candleWidth * 0.8, 0.8);
    // final thinWidth = max(params.candleWidth * 0.2, 0.2);
    // Draw price bar
    final open = candle.open;
    final close = candle.close;
    final high = candle.high;
    final low = candle.low;

    /// 取出涨跌
    bool isGained = close > open;
    final openY = params.mainChartPrice(open);
    final closeY = params.mainChartPrice(close);
    if (isGained) {
      /// 涨的话画矩形线框
      canvas.drawRect(
          Rect.fromLTWH(x - thickWidth / 2, closeY, thickWidth, openY - closeY),
          Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 1
            ..color = params.chartStyle.gainColor);

      canvas.drawLine(
        Offset(x, params.mainChartPrice(high)),
        Offset(x, params.mainChartPrice(close)),
        Paint()
          ..strokeWidth = 1
          ..color = params.chartStyle.gainColor,
      );

      canvas.drawLine(
        Offset(x, openY),
        Offset(x, params.mainChartPrice(low)),
        Paint()
          ..strokeWidth = 1
          ..color = params.chartStyle.gainColor,
      );
    } else {
      /// 如果开盘价==收盘价, 0.5高度 否则画不出
      double margin = openY - closeY == 0 ? 0.5 : 0;
      canvas.drawLine(
        Offset(x, openY),
        Offset(x, closeY + margin),
        Paint()
          ..strokeWidth = thickWidth
          ..color = params.chartStyle.lossColor,
      );

      /// 绘制最高价和最低价
      canvas.drawLine(
        Offset(x, params.mainChartPrice(high)),
        Offset(x, params.mainChartPrice(low)),
        Paint()
          ..strokeWidth = 1
          ..color = params.chartStyle.lossColor,
      );
    }
  }
}
