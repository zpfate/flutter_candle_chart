
import 'dart:ui';

enum MainEnum {
  MA,
  EMA,
  BOLL,
  IC,
}

extension MainEnumExtension on MainEnum {

  String get name {
    return toString().split(".").last;
  }
}

enum SecondaryEnum {
  VOL,
  MACD,
  DMI,
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