import 'package:aavu_admin/screens/breeds/breeds_screen.dart';
import 'package:aavu_admin/screens/cows/cows_screen.dart';
import 'package:aavu_admin/screens/energy_point/energy_point.dart';
import 'package:aavu_admin/screens/uploads/uploads_screen.dart';
import 'package:aavu_admin/widgets/nav_wrapper/nav_wrapper.dart';
import 'package:aavu_admin/screens/home/home_screen.dart';
import 'package:aavu_admin/widgets/response_widget.dart';
import 'package:flutter/material.dart';

abstract class Routes {
  static const home = "/";
  static const uploads = "/uploads";
  static const breeds = "/breeds";
  static const gosalas = "/gosalas";
  static const cows = "/cows";
  static MaterialPageRoute<dynamic> all(RouteSettings settings) {
    final url = settings.name;
    if (url == home) {
      return MaterialPageRoute<dynamic>(builder: (context) {
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
    } else if (url == breeds) {
      return MaterialPageRoute<dynamic>(builder: (context) {
        return Responsive(
            mobile: MobileTabletNavWrapper(
              screen: BreedsScreen(),
              name: uploads,
            ),
            tablet: MobileTabletNavWrapper(
              screen: BreedsScreen(),
              name: uploads,
            ),
            desktop: DesktopNavWrapper(screen: BreedsScreen(), name: breeds));
      });
    } else if (url == gosalas) {
      return MaterialPageRoute<dynamic>(builder: (context) {
        return Responsive(
            mobile: MobileTabletNavWrapper(
              screen: EnergyPointScreen(),
              name: uploads,
            ),
            tablet: MobileTabletNavWrapper(
              screen: EnergyPointScreen(),
              name: uploads,
            ),
            desktop:
                DesktopNavWrapper(screen: EnergyPointScreen(), name: gosalas));
      });
    } else if (url == cows) {
      return MaterialPageRoute<dynamic>(builder: (context) {
        return Responsive(
            mobile: MobileTabletNavWrapper(
              screen: CowsScreen(),
              name: uploads,
            ),
            tablet: MobileTabletNavWrapper(
              screen: CowsScreen(),
              name: uploads,
            ),
            desktop: DesktopNavWrapper(screen: CowsScreen(), name: cows));
      });
    } else {
      return MaterialPageRoute<dynamic>(builder: (context) {
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
