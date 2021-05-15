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
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.upload_rounded), label: "Uploads")
        ],
      ),
    );
  }

  int _getIndex() {
    if (name == Routes.home) {
      return 0;
    } else if (name == Routes.uploads) {
      return 1;
    } else {
      return 0;
    }
  }
}
