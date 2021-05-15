import 'package:aavu_admin/screens/uploads/uploads_screen.dart';
import 'package:aavu_admin/widgets/nav_wrapper/nav_wrapper.dart';
import 'package:aavu_admin/screens/home/home_screen.dart';
import 'package:aavu_admin/widgets/response_widget.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static const home = "/";
  static const uploads = "/uploads";
  static MaterialPageRoute all(RouteSettings settings) {
    final url = settings.name;
    if (url == home) {
      return MaterialPageRoute(builder: (context) {
        return Responsive(
            mobile: MobileTabletNavWrapper(
              screen: HomeScreen(),
              name: home,
            ),
            tablet: MobileTabletNavWrapper(
              screen: HomeScreen(),
              name: home,
            ),
            desktop: DesktopNavWrapper(screen: HomeScreen(), name: home));
      });
    } else {
      return MaterialPageRoute(builder: (context) {
        return Responsive(
            mobile: MobileTabletNavWrapper(
              screen: UploadScreen(),
              name: uploads,
            ),
            tablet: MobileTabletNavWrapper(
              screen: UploadScreen(),
              name: uploads,
            ),
            desktop: DesktopNavWrapper(screen: UploadScreen(), name: uploads));
      });
    }
  }
}
