import 'package:flutter/material.dart';

class BottomNav {
  BottomNav(
      {@required this.iconData,
      @required this.title,
      @required this.navigatorKey,
      @required this.initialScreen});

  final IconData iconData;
  final String title;
  final GlobalKey<NavigatorState> navigatorKey;
  final Widget initialScreen;
}
