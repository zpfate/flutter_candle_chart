
import 'dart:math';
import 'dart:ui';
import 'package:flutter_candle_chart/model/painter_params.dart';

class MainRender {

  static void drawMainChart(Canvas canvas, Size size, PainterParams params) {

    canvas.save();
    canvas.clipRect(Offset.zero & Size(size.width, params.mainHeight));
    _drawCandles(canvas, size, params);
    canvas.restore();
  }

  static void _drawCandles(Canvas canvas, Size size, PainterParams params) {
    for (int i = 0; i < params.candles.length; i++) {
      _drawSingleDay(canvas, params, i, size);
    }
  }

  static void _drawSingleDay(Canvas canvas, PainterParams params, int i, Size size) {

    final candleWidth = params.chartStyle.candleWidth;
    final candle = params.candles[i];
    final x = i * candleWidth;
    final thickWidth = max(candleWidth * 0.8, 0.8);
    // final thinWidth = max(params.candleWidth * 0.2, 0.2);
    // Draw price bar
    final open = candle.open;
    final close = candle.close;
    final high = candle.high;
    final low = candle.low;
    if (open != null && close != null) {
      /// 取出涨跌
      bool isGained = close > open;
      final openY = params.mainChartPrice(open);
      final closeY = params.mainChartPrice(close);
      if (isGained) {
        /// 涨的话画矩形线框
        canvas.drawRect(
            Rect.fromLTWH(
                x - thickWidth / 2, closeY, thickWidth, openY - closeY),
            Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1
              ..color = params.chartStyle.gainColor);

        if (high != null && low != null) {
          canvas.drawLine(
            Offset(x, params.mainChartPrice(high)),
            Offset(x, params.mainChartPrice(close)),
            Paint()
              ..strokeWidth = 1
              ..color =  params.chartStyle.gainColor,
          );

          canvas.drawLine(
            Offset(x, openY),
            Offset(x, params.mainChartPrice(low)),
            Paint()
              ..strokeWidth = 1
              ..color = params.chartStyle.gainColor,
          );
        }
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
        if (high != null && low != null) {
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
  }
}