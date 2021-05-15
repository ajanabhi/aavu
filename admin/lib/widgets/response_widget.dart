import 'package:flutter/material.dart';
import "package:aavu_admin/utils/utils.dart";

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive(
      {Key? key,
      required this.mobile,
      required this.tablet,
      required this.desktop})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final width = constraints.maxWidth;
        if (width > 1200) {
          return desktop;
        } else if (width > 600 && width <= 1200) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }

  static bool isDesktop(BuildContext context) {
    final width = context.screenSize.width;
    return width > 1200;
  }

  static bool isTablet(BuildContext context) {
    final width = context.screenSize.width;
    return width > 600 && width <= 1200;
  }

  static bool isMobile(BuildContext context) {
    final width = context.screenSize.width;
    return width <= 600;
  }
}
