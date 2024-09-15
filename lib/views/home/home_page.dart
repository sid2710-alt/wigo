import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wigo/common/custom_appbar.dart';
import 'package:wigo/common/custom_container.dart';
import 'package:wigo/common/heading.dart';
import 'package:wigo/constants/constants.dart';
import 'package:wigo/views/home/all_fastest_food.dart';
import 'package:wigo/views/home/all_neaarby_restuarants.dart';
import 'package:wigo/views/home/recommendations.dart';
import 'package:wigo/views/home/widgets/category_list.dart';
import 'package:wigo/views/home/widgets/food_list.dart';
import 'package:wigo/views/home/widgets/nearby_restaurants_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: const CustomAppBar()),
      body: SafeArea(
          child: CustomContainer(
        containerContent: Column(
          children: [
            const CategoryList(),
            Heading(
                text: "Nearby Restaurants",
                onTap: () {
                  Get.to(() => AllNearByRestaurants(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 900));
                }),
            NearbyRestaurants(),
            Heading(
                text: "Try Something New",
                onTap: () {
                  Get.to(() => Recommendations(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 900));
                }),
            FoodsList(),
            Heading(
                text: "Fastest Food closer to you",
                onTap: () {
                  Get.to(() => AllFastestFood(),
                      transition: Transition.cupertino,
                      duration: const Duration(milliseconds: 900));
                }),
            FoodsList(),
          ],
        ),
      )),
    );
  }
}
