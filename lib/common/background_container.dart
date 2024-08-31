import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wigo/constants/constants.dart';

class BackgroundContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  const BackgroundContainer(
      {super.key, required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)),
        image: const DecorationImage(
            image: AssetImage("assets/images/restaurant_bk.png"),
            fit: BoxFit.cover,
            opacity: 0.7),
      ),
      child: child,
    );
  }
}
