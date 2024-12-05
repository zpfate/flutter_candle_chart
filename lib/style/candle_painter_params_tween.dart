import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter_candle_chart/model/candle_painter_params.dart';

class CandlePainterParamsTween extends Tween<CandlePainterParams> {
  CandlePainterParamsTween({
    super.begin,
    required CandlePainterParams super.end,
  });

  @override
  CandlePainterParams lerp(double t) {
    begin ??= end;

    return CandlePainterParams(
      xShift: end!.xShift,
      candles: end!.candles, // 假设 candles 数据不需要动画变化
      maxPrice: lerpDouble(begin!.maxPrice, end!.maxPrice, t)!,
      minPrice: lerpDouble(begin!.minPrice, end!.minPrice, t)!,
      maxCount: end!.maxCount, // 不需要插值
      minCount: end!.minCount, // 不需要插值
      candleWidth: lerpDouble(begin!.candleWidth, end!.candleWidth, t)!,
      size: Size.lerp(begin!.size, end!.size, t)!,
      tapPosition: Offset.lerp(begin!.tapPosition, end!.tapPosition, t),
      startOffset: lerpDouble(begin!.startOffset, end!.startOffset, t),
      style: end!.style, // 假设 chartStyle 不需要动画变化
    );
  }
}
