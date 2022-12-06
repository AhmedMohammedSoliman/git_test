import 'package:flutter/material.dart';
import 'package:git_test/showDetailes/show_detailes.dart';

import 'home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen() ,
        ShowDetailes.routeName : (context) => ShowDetailes() ,
      },
    );
  }
}

