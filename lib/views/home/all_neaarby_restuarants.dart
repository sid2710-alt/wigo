import 'package:flutter/material.dart';
import 'package:wigo/common/app_style.dart';
import 'package:wigo/common/background_container.dart';
import 'package:wigo/common/reusable_text.dart';
import 'package:wigo/constants/constants.dart';
import 'package:wigo/constants/uidata.dart';
import 'package:wigo/views/home/widgets/restaurant_tile.dart';

class AllNearByRestaurants extends StatelessWidget {
  const AllNearByRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: ReusableText(
              text: "All Nearby Restaurants",
              style: appStyle(13, kGray, FontWeight.w600)),
          backgroundColor: kOffWhite),
      body: BackgroundContainer(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          child: ListView(
            children: List.generate(restaurants.length, (index) {
              final restaurant = restaurants[index];
              return RestaurantTile(
                restaurant: restaurant,
              );
            }),
          ),
        ),
      ),
    );
  }
}
