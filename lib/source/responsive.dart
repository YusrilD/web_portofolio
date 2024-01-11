import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.web,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  static bool isMobile() => Get.width < 650;

  static bool isTablet() => Get.width <= 1280 && Get.width >= 650;

  static bool isDesktop() => Get.width >= 1100;

  // means bellow 1600 of height
  static bool isB1600() => Get.width <= 1600;

  static bool is22() => Get.width >= 1920 && Get.height >= 961;
  static bool is22L() => Get.width >= 1680 && Get.height >= 931;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1366) {
          return web;
        } else if (constraints.maxWidth >= 650) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
