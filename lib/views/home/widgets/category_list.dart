import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigo/constants/uidata.dart';
import 'package:wigo/views/home/widgets/category_widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.w),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (index) {
          var category = categories[index];
          return CategoryWidget(category: category);
        }),
      ),
    );
  }
}
