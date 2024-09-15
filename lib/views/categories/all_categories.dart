import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigo/common/app_style.dart';
import 'package:wigo/common/background_container.dart';
import 'package:wigo/common/reusable_text.dart';
import 'package:wigo/constants/constants.dart';
import 'package:wigo/constants/uidata.dart';
import 'package:wigo/views/categories/widget/category_tile.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kOffWhite,
          title: ReusableText(
            text: 'All Categories',
            style: appStyle(12, kGray, FontWeight.w600),
          ),
        ),
        body: BackgroundContainer(
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.only(left: 12.w, top: 10.h),
            height: height,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(categories.length, (index) {
                var category = categories[index];
                return CategoryTile(category: category);
              }),
            ),
          ),
        ));
  }
}
