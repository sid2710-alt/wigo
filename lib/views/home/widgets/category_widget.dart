import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:wigo/Controllers/category_controller.dart';
import 'package:wigo/common/app_style.dart';
import 'package:wigo/common/reusable_text.dart';
import 'package:wigo/constants/constants.dart';
import 'package:wigo/views/categories/all_categories.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({
    super.key,
    required this.category,
  });

  var category;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CategoryController());
    return GestureDetector(
        onTap: () {
          if (controller.categoryValue == category['_id']) {
            controller.categoryValue = '';
            controller.titleValue = '';
          } else if (category['title'] == 'More') {
            Get.to(() => const AllCategories(),
                transition: Transition.fadeIn,
                duration: const Duration(milliseconds: 900));
          } else {
            controller.categoryValue = category['_id'];
            controller.titleValue == category['title'];
          }
        },
        child: Obx(
          () => Container(
            margin: EdgeInsets.only(right: 5.w),
            padding: EdgeInsets.only(top: 4.h),
            width: width * 0.19,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                    color: controller.categoryValue == category['_id']
                        ? kSecondary
                        : kOffWhite,
                    width: 0.5.w)),
            child: Column(children: [
              SizedBox(
                height: 35.h,
                child: Image.network(
                  category['imageUrl'],
                  fit: BoxFit.contain,
                ),
              ),
              ReusableText(
                  text: category['title'],
                  style: appStyle(12, kDark, FontWeight.normal))
            ]),
          ),
        ));
  }
}
