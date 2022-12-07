import 'package:flutter/material.dart';
import 'package:git_test/showDetailes/show_detailes.dart';

Route CreateRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ShowDetailes(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.linear;

        final tween = Tween(begin: begin, end: end);
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return RotationTransition(
          turns: tween.animate(curvedAnimation),
          child: ScaleTransition(
            scale: tween.animate(curvedAnimation),
            child: child,
          ),
        );
      }
  );
}