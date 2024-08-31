import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:wigo/common/app_style.dart';
import 'package:wigo/common/reusable_text.dart';
import 'package:wigo/constants/constants.dart';
import 'package:wigo/views/categories/category_page.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.category,
  });

  final category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() => const CategoryPage(),
            transition: Transition.fadeIn,
            duration: const Duration(milliseconds: 9));
      },
      leading: CircleAvatar(
        radius: 18.r,
        child: Image.network(
          category['imageUrl'],
          fit: BoxFit.contain,
        ),
      ),
      title: ReusableText(
        text: category['title'],
        style: appStyle(12, kGray, FontWeight.normal),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: kGray,
        size: 15.r,
      ),
    );
  }
}
