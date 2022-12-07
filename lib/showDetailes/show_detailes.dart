import 'package:flutter/material.dart';

class ShowDetailes extends StatelessWidget{
  static const String routeName = "show";

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text("Email" , style: TextStyle(fontSize: 30),) ,
              SizedBox(height: 20,),
              Text("Password", style: TextStyle(fontSize: 30),)
            ],
          ),
        ),
      ),
    );
  }
}