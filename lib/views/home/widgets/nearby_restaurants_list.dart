import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigo/constants/uidata.dart';
import 'package:wigo/views/home/widgets/restaurant_widget.dart';

class NearbyRestaurants extends StatelessWidget {
  const NearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.w),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (index) {
          final restaurant = restaurants[index];
          return RestaurantWidget(
            image: imageUrl,
            logo: logoLink,
            title: restaurant['title'],
            time: restaurant['time'],
            rating: restaurant['rating'],
            ratingCount: restaurant['ratingCount'],
          );
        }),
      ),
    );
  }
}
