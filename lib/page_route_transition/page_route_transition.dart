import 'package:flutter/cupertino.dart';
import 'package:git_test/showDetailes/show_detailes.dart';

Route createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ShowDetailes(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = 0.0;
      const end = 1.0;
      const curve = Curves.easeIn;

      final tween = Tween(begin: begin, end: end);
      final curvedAnimation = CurvedAnimation(
        parent: animation,
        curve: curve,
      );
      return ScaleTransition(
        scale: tween.animate(curvedAnimation),
        child: RotationTransition(
          child: child,
          turns: tween.animate(curvedAnimation),
        ),
      );
    },
  );
}