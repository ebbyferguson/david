import 'package:flutter/material.dart';

class Styles {
  static const textSizeLarge = 20.0;
  static const textSizeDefault = 15.0;
  static const buttonTextSize = 16.0;
  static final Color primaryColor = _hexToColor('160e2a');
  static final Color accentColor = _hexToColor('100A1F');


  static final darkButton = BoxDecoration(
    // color: primaryColor,
    border: new Border.all(color: primaryColor, width: 2.0),
    borderRadius: new BorderRadius.circular(5.0),
  );

  static final redButton = BoxDecoration(
    // color: primaryColor,
    border: new Border.all(color: Colors.red, width: 2.0),
    borderRadius: new BorderRadius.circular(5.0),
  );

  static final outlineButton = BoxDecoration(
    border: new Border.all(color: primaryColor, width: 2.0),
    borderRadius: new BorderRadius.circular(5.0),
  );

  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }

  // dimensions
  static const dimen_03 = 3.0;
  static const dimen_05 = 5.0;
  static const dimen_10 = 10.0;
  static const dimen_15 = 15.0;
  static const dimen_20 = 20.0;
  static const dimen_25 = 25.0;
  static const dimen_30 = 30.0;
  static const dimen_35 = 35.0;
  static const dimen_40 = 40.0;
  static const dimen_45 = 45.0;
  static const dimen_50 = 50.0;
}
