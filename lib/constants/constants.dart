import 'package:flutter/cupertino.dart';

class AppColor {
  //static const Color primaryColor = Color(0xffEE1D48);
}

class Images {
  static String get cook => 'assets/images/cook.png';
  static String get deliver => 'assets/images/deliver.png';
  static String get order => 'assets/images/order.png';
}

class ScreenSize {
  BuildContext context;
  ScreenSize(this.context);
  double get mainHeight => MediaQuery.of(context).size.height;
  double get mainWidth => MediaQuery.of(context).size.width;
}
