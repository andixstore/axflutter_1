class ChartData {
  final String month;
  final int sales;
  final int monthIndex;

  ChartData(this.month, this.sales, this.monthIndex);
}

List<ChartData> chartData = [
  ChartData('Jan', 5, 0),
  ChartData('Feb', 25, 1),
  ChartData('Mar', 100, 2),
  ChartData('Apr', 75, 3),
  ChartData('May', 80, 4),
  ChartData('Jun', 120, 5),
];
