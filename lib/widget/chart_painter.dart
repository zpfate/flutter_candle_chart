

import 'package:flutter/material.dart';
import 'package:flutter_candle_chart/model/painter_params.dart';
import 'package:flutter_candle_chart/render/main_render.dart';

class ChartPainter extends CustomPainter {

  final PainterParams params;
  const ChartPainter({
    required this.params,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    MainRender.drawMainChart(canvas, size, params);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}