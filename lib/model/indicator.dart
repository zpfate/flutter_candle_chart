
import 'dart:ui';

abstract class ChartEnum {
  String get name;
}

enum MainEnum implements ChartEnum {
  MA,
  EMA,
  BOLL,
  DC,
  VWAP,
  IC,
  KC,
  VP;

  @override
  // TODO: implement name
  String get name => toString().split(".").last;
}


enum SecondaryEnum implements ChartEnum {
  VOL,
  ADX,
  AO,
  MACD,
  ATR,
  DMA,
  DMI,
  DPO,
  EWO,
  TRI,
  CCI,
  KDJ,
  RSI,
  TSI,
  ROC,
  MFI,
  OBV,
  ADL,
  WR,
  BBW,
  SAR;

  @override
  // TODO: implement name
  String get name => toString().split(".").last;
}

extension SecondaryEnumExtension on SecondaryEnum {
  String get name {
    return toString().split(".").last;
  }
}

class Indicator {

  final MainEnum code;
  final List<int> periods;
  final List<Color> colors;
  Indicator({required this.code,
    this.periods = const [],
    this.colors = const[],
  });
}