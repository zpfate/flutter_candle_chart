class CandleData {

  /// 开盘价
  final double open;
  /// 收盘价
  final double close;
  /// 最高价
  final double high;
  /// 最低价
  final double low;
  /// 时间戳
  final int timestamp;
  /// 成交量
  final double volume;

  CandleData(
      {required this.open,
      required this.close,
      required this.high,
      required this.low,
      required this.timestamp,
      required this.volume});

  /// 是涨
  bool get isRise {
    return close > open;
  }
}
