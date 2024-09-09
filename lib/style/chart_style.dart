class ChartStyle {
  /// 蜡烛图宽度
  final double candleWidth;
  /// 主图高度
  final double mainChartHeight;
  /// 副图高度
  final double subChartHeight;

  const ChartStyle(
      {this.candleWidth = 1.0,
      this.mainChartHeight = 200.0,
      this.subChartHeight = 100.0});
}
