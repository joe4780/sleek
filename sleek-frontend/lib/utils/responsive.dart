// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    this.watch,
    required this.desktop,
  }) : super(key: key);
  final Widget mobile;
  final Widget? tablet;
  final Widget? watch;
  final Widget desktop;

  // This isMobile, isTablet, isDesktop, isWatch helep us later
  static bool isMobile(BuildContext context) => size(context).width < 850;
  static bool isTablet(BuildContext context) => size(context).width < 1100 && size(context).width >= 850;
  static bool isDesktop(BuildContext context) => size(context).width >= 850;
  static bool isWatch(BuildContext context) => size(context).width <= 200;

  static Size size(BuildContext context) => MediaQuery.sizeOf(context);


  @override
  Widget build(BuildContext context) {
    final Size _size = size(context);
    // If our width is more than 1100 then we consider it a desktop
    if (isDesktop(context)) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (isDesktop(context)) {
      return tablet!;
    }
    // else if (_size.width >= 850 && tablet != null) {
    //   return tablet!;
    // }
    // If width it less then 200 we consider it as isWatch
    else if (_size.width <= 200 && watch != null) {
      return watch!;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
