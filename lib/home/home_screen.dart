import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../page_route_transition/page_route_transition2.dart';

class HomeScreen extends StatefulWidget{

  static const String routeName = "home";



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String email = "";
  String password = "" ;
  double valslider = 0 ;
  Color myColor = Colors.red;
  double myFotSize = 20 ;
  double myPadding = 10 ;
  double myRadius = 30 ;
  Color myContainerColor = Colors.yellow ;
  double myOpicity = 0 ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                AnimatedOpacity(
                  opacity: myOpicity,
                  duration: Duration(seconds: 1),
                  child: Container(
                    child: Text("Animated container"),
                    padding: EdgeInsets.all(myPadding),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(myRadius) ,
                        color: myContainerColor
                    ),
                  ),
                ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    child: Container(
                      child: Text("Animated container"),
                      padding: EdgeInsets.all(myPadding),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(myRadius) ,
                        color: myContainerColor
                      ),
                    ),
                  ),
                  AnimatedDefaultTextStyle(
                      child:  Text("Animated default textStyle"),
                      style: TextStyle(color: myColor , fontSize: myFotSize),
                      duration: Duration(seconds: 1) ,
                  curve: Curves.linear,) ,
                  ElevatedButton(
                      onPressed: (){
                     myColor = Colors.green ;
                     myFotSize = 25 ;
                     myPadding = 20 ;
                     myRadius = 100 ;
                     myContainerColor = Colors.blue ;
                     myOpicity = 0.5 ;
                     setState((){});
                      },
                      child: Text("Animated default textStyle")) ,
                  ElevatedButton(
                      onPressed: (){
                        myColor = Colors.blue ;
                        myFotSize = 15 ;
                        myPadding = 30 ;
                        myRadius = 60 ;
                        myContainerColor = Colors.brown ;
                        myOpicity = 1 ;
                        setState((){});
                      },
                      child: Text("Animated default textStyle"))
                ],
              ),
            )
        ));

  }
}
