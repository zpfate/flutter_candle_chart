import 'package:flutter_candle_chart/model/candle_data.dart';

typedef TimeFormatter = String Function(int timestamp, int visibleCount);
typedef PriceFormatter = String Function(double price);
typedef OverlayTextFormatter = Function(CandleData candleData);

class TextFormatter {
  final TimeFormatter? timeFormatter;
  final PriceFormatter? priceFormatter;
  final OverlayTextFormatter? overlayTextFormatter;
  TextFormatter(
      {this.timeFormatter, this.priceFormatter, this.overlayTextFormatter});
}
