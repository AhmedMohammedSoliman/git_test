import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  static const String routeName = "home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  hintText: "enter your email" ,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                  )
              ),
            ) ,
            TextFormField(
              decoration: InputDecoration(
                  hintText: "enter your password" ,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                  )
              ),
            ) ,
            ElevatedButton(
              onPressed: (){
              },
              child: Text("Let's go") ,
              style: ElevatedButton.styleFrom(primary: Colors.black)
              ,) ,
          ],
        ),
      ),
    );
  }
}
