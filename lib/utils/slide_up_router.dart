import 'package:flutter/material.dart';

class SlideUpRoute extends PageRouteBuilder {
  final Widget widget;

  SlideUpRoute({this.widget})
      : super(pageBuilder: (context, animation, secondaryAnimation) {
          return widget;
        }, transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var begin = Offset(0.0, 1.0);
          var end = Offset.zero;

          var curve = Curves.easeInOut;
          var curveTween = CurveTween(curve: curve);

          var tween = Tween(begin: begin, end: end).chain(curveTween);

          return SlideTransition(position: animation.drive(tween), child: child);
        });
}
