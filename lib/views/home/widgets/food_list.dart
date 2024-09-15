import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigo/constants/uidata.dart';
import 'package:wigo/views/home/widgets/food_widget.dart';

class FoodsList extends StatelessWidget {
  const FoodsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.w),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(foods.length, (index) {
          final food = foods[index];
          return FoodWidget(
            image: food['imageUrl'],
            title: food['title'],
            time: food['time'],
            price: food['price'],
          );
        }),
      ),
    );
  }
}
