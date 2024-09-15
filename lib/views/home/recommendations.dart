import 'package:flutter/material.dart';
import 'package:wigo/common/app_style.dart';
import 'package:wigo/common/reusable_text.dart';
import 'package:wigo/constants/constants.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0.3,
            title: ReusableText(
                text: "Recommendations",
                style: appStyle(13, kGray, FontWeight.w600)),
            backgroundColor: kOffWhite));
  }
}
