import 'package:flutter/material.dart';

class ShowDetailes extends StatelessWidget{
  static const String routeName = "show";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments  as Map;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text("${args ["email"]}" , style: TextStyle(fontSize: 30),) ,
              SizedBox(height: 20,),
              Text("${args ["password"]}", style: TextStyle(fontSize: 30),)
            ],
          ),
        ),
      ),
    );
  }
}