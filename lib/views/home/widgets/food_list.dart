import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigo/constants/constants.dart';
import 'package:wigo/constants/uidata.dart';

class FoodsList extends StatelessWidget {
  const FoodsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.w),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(foods.length, (index) {
          final food = foods[index];
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              height: 150.h,
              width: 200.w,
              color: kSecondary,
            ),
          );
        }),
      ),
    );
    ;
  }
}
