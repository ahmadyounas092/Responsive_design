import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 850;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1100 &&
        MediaQuery.of(context).size.width >= 850;
  }

  static bool isWeb(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1100;
  }

  // you can also write in this form
  // static const isMobile(BuildContext context) => MediaQuery.of(context).size.width < 850;
}
