import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:wigo/app_text_styles.dart';

class WeekSalesChart extends StatelessWidget {
  const WeekSalesChart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BarChartGroupData> showingBarGroups = [
      BarChartGroupData(
        x: 1,
        // barsSpace: 4,
        barRods: [
          BarChartRodData(
              toY: 12,
              color: Colors.blue,
              width: 30,
              borderRadius: const BorderRadius.all(Radius.zero))
        ],
        showingTooltipIndicators: [12],
      ),
      BarChartGroupData(
        x: 2,
        barRods: [
          BarChartRodData(
              toY: 18,
              color: Colors.green,
              width: 30,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
        showingTooltipIndicators: [18],
      ),
      BarChartGroupData(
        x: 3,
        barRods: [
          BarChartRodData(
              toY: 10,
              color: Colors.red,
              width: 30,
              borderRadius: const BorderRadius.all(Radius.zero))
        ],
        showingTooltipIndicators: [10],
      ),
      BarChartGroupData(
        x: 4,
        barRods: [
          BarChartRodData(
              toY: 18,
              color: Colors.green,
              width: 30,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
        showingTooltipIndicators: [18],
      ),
      BarChartGroupData(
        x: 5,
        barRods: [
          BarChartRodData(
              toY: 18,
              color: Colors.green,
              width: 30,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
        showingTooltipIndicators: [18],
      ),
      BarChartGroupData(
        x: 6,
        barRods: [
          BarChartRodData(
              toY: 18,
              color: Colors.green,
              width: 30,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
        showingTooltipIndicators: [18],
      ),
      BarChartGroupData(
        x: 7,
        barsSpace: 4,
        barRods: [
          BarChartRodData(
              toY: 50,
              color: Colors.green,
              width: 30,
              borderRadius: const BorderRadius.all(Radius.zero)),
        ],
        showingTooltipIndicators: [50],
      ),
    ];

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Sales Stats',
            style: CustomTextStyle.lBold(null),
          ),
          Expanded(
            child: BarChart(
              BarChartData(
                  maxY: 60,
                  barGroups: showingBarGroups,
                  alignment: BarChartAlignment.spaceBetween,
                  groupsSpace: 0,
                  borderData: FlBorderData(show: false),
                  titlesData: FlTitlesData(
                      show: true,
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (double value, TitleMeta meta) {
                              return const Text('Mon');
                            },
                            reservedSize: 30),
                      ),
                      leftTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                          interval: 10,
                          // getTextStyles: (context, value) => const TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 10,
                          // ),
                          reservedSize: 30,
                        ),
                      ),
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                          interval: 10,
                          // getTextStyles: (context, value) => const TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 10,
                          // ),
                          reservedSize: 30,
                        ),
                      ),
                      topTitles: const AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                          interval: 10,
                          // getTextStyles: (context, value) => const TextStyle(
                          //   color: Colors.black,
                          //   fontSize: 10,
                          // ),
                          reservedSize: 30,
                        ),
                      )),
                  gridData: const FlGridData(drawVerticalLine: false)),
            ),
          ),
        ]);
  }
}
