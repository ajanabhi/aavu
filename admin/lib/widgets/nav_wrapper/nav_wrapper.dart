import 'package:aavu_admin/routes.dart';
import 'package:flutter/material.dart';
import "package:aavu_admin/utils/utils.dart";

class DesktopNav extends StatelessWidget {
  final String name;

  const DesktopNav({Key? key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            selected: name == Routes.home,
            title: Text("Home"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(Routes.home);
            },
          ),
          ListTile(
            leading: Icon(Icons.upload_rounded),
            selected: name == Routes.uploads,
            title: Text("Uploads"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(Routes.uploads);
            },
          ),
          ListTile(
            leading: Icon(Icons.code),
            selected: name == Routes.breeds,
            title: Text("Breeds"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(Routes.breeds);
            },
          ),
          ListTile(
            leading: Icon(Icons.h_mobiledata),
            selected: name == Routes.breeds,
            title: Text("Gosalas"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(Routes.gosalas);
            },
          ),
          ListTile(
            leading: Icon(Icons.h_mobiledata),
            selected: name == Routes.cows,
            title: Text("Cows"),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(Routes.cows);
            },
          )
        ],
      ),
    );
  }
}

class DesktopNavWrapper extends StatelessWidget {
  final Widget screen;
  final String name;

  const DesktopNavWrapper({Key? key, required this.screen, required this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.screenSize.width,
        height: context.screenSize.height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DesktopNav(
              name: name,
            ),
            Expanded(child: screen)
          ],
        ),
      ),
    );
  }
}

class MobileTabletNavWrapper extends StatelessWidget {
  final Widget screen;
  final String name;
  const MobileTabletNavWrapper(
      {Key? key, required this.screen, required this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _getIndex(),
        onTap: (value) {
          if (value == 0) {
            Navigator.pushReplacementNamed(context, Routes.home);
          } else if (value == 1) {
            Navigator.pushReplacementNamed(context, Routes.uploads);
          } else if (value == 2) {
            Navigator.pushReplacementNamed(context, Routes.breeds);
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.upload_rounded), label: "Uploads"),
          BottomNavigationBarItem(icon: Icon(Icons.code), label: "Breeds")
        ],
      ),
    );
  }

  int _getIndex() {
    if (name == Routes.home) {
      return 0;
    } else if (name == Routes.uploads) {
      return 1;
    } else if (name == Routes.breeds) {
      return 2;
    } else {
      return 0;
    }
  }
}
