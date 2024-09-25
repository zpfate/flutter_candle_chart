import 'package:flutter/material.dart';

class ChartStyle {

  /// 正常显示个数
  final int visibleCount;
  /// 至少显示个数
  final int minVisibleCount;
  /// 最多显示个数
  final int maxVisibleCount;

  /// 蜡烛图宽度
  final double candleWidth;

  /// 主图高度
  final double mainChartHeight;

  /// 副图高度
  final double subChartHeight;

  /// 涨色
  final Color gainColor;

  /// 跌色
  final Color lossColor;
  /// 长按选中色
  final Color selectionHighlightColor;

  final TextStyle timeLabelStyle;
  final Color priceBgColor;
  final TextStyle priceLabelStyle;

  const ChartStyle({
    this.visibleCount = 69,
    this.minVisibleCount = 9,
    this.maxVisibleCount = 240,
    this.candleWidth = 1.0,
    this.mainChartHeight = 200.0,
    this.subChartHeight = 100.0,
    this.gainColor = Colors.red,
    this.lossColor = Colors.green,
    this.timeLabelStyle = const TextStyle(
      fontSize: 16,
      color: Colors.grey,
    ),
    this.priceLabelStyle = const TextStyle(
      fontSize: 16,
      color: Colors.white,
    ),
    this.priceBgColor = Colors.blue,
    this.selectionHighlightColor = Colors.black12,
  });
}
