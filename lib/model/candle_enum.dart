
import 'package:flutter_candle_chart/model/candle_data.dart';

typedef LongPressCandleCallback = Function(CandleData candleData);

enum GestureState {
  normal,
  drag,
  scale,
  longPress,
}

extension GestureStatusExtension on GestureState {

  bool get isNormal => this == GestureState.normal;
}