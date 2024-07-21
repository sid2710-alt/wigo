import 'package:flutter/material.dart';
import 'package:wigo/widgets/bar_chart.dart';
import 'package:wigo/widgets/top_dishes.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Flexible(flex: 4, child: WeekSalesChart()),
              Flexible(flex: 3, child: DishList()),
              Flexible(flex: 2, child: SizedBox()),
            ],
          ),
        )

        //  ListView(
        //   children: [const WeekSalesChart()],
        // ),
        );
  }
}
