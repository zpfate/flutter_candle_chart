import 'package:flutter/material.dart';

class ChartStyle {

  /// 正常显示个数
  final int visibleCount;

  /// 至少显示个数
  final int minVisibleCount;

  /// 最多显示个数
  final int maxVisibleCount;

  /// 主图高度
  final double mainChartHeight;

  /// 单个副图高度
  final double subChartHeight;

  /// 涨色
  final Color gainColor;

  /// 跌色
  final Color lossColor;

  final Color trendLineColor;

  /// 长按选中色
  final Color selectionHighlightColor;

  /// 时间文本样式
  final TextStyle timeLabelStyle;

  /// 价格文本背景色
  final Color priceBgColor;

  /// 价格文本样式
  final TextStyle priceLabelStyle;

  const ChartStyle({

    this.visibleCount = 69,
    this.minVisibleCount = 9,
    this.maxVisibleCount = 240,
    this.mainChartHeight = 300.0,
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
    this.trendLineColor = Colors.black12,
  });


}
