import 'package:flutter/material.dart';

class PageSlideRoute extends PageRouteBuilder {
  final page;
  double dx, dy;
  PageSlideRoute({this.page, this.dx = 1, this.dy = 0})
      : super(
            pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) =>
                page,
            transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondaryAnimation,
                    Widget child) =>
                SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset(dx, dy),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ));
}
