import 'package:flutter/material.dart';
import "package:aavu_admin/utils/utils.dart";

class DesktopNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.upload_rounded),
            title: Text("Uploads"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}

class DesktopNavWrapper extends StatelessWidget {
  final Widget screen;

  const DesktopNavWrapper({Key? key, required this.screen}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenSize.width,
      height: context.screenSize.height,
      child: Row(
        children: [DesktopNav(), Expanded(child: screen)],
      ),
    );
  }
}

class MobileTabletNavWrapper extends StatelessWidget {
  final Widget screen;

  const MobileTabletNavWrapper({Key? key, required this.screen})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.upload_rounded), label: "Uploads")
        ],
      ),
    );
  }
}
