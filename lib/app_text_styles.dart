import 'package:flutter/material.dart';

class CustomTextStyle {
  // Helper method to avoid accessing instance members in statics
  static TextStyle _getTextStyle(
      double fontSize, FontWeight fontWeight, Color? color) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color, // Use provided color or default to black
    );
  }

  // TextStyles using the helper method
  static TextStyle xlBold(Color? color) {
    return _getTextStyle(24.0, FontWeight.bold, color);
  }

  static TextStyle xlNormal(Color? color) {
    return _getTextStyle(24.0, FontWeight.normal, color);
  }

  static TextStyle lBold(Color? color) {
    return _getTextStyle(18.0, FontWeight.bold, color);
  }

  static TextStyle lNormal(Color? color) {
    return _getTextStyle(18.0, FontWeight.normal, color);
  }

  static TextStyle mBold(Color? color) {
    return _getTextStyle(16.0, FontWeight.bold, color);
  }

  static TextStyle mNormal(Color? color) {
    return _getTextStyle(16.0, FontWeight.normal, color);
  }

  static TextStyle sBold(Color? color) {
    return _getTextStyle(14.0, FontWeight.bold, color);
  }

  static TextStyle sNormal(Color? color) {
    return _getTextStyle(14.0, FontWeight.normal, color);
  }
}
