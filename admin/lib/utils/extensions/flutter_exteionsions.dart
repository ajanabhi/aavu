import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;
}
