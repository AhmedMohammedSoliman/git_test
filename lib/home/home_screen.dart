import 'package:flutter/material.dart';
import 'package:git_test/showDetailes/show_detailes.dart';

class HomeScreen extends StatefulWidget{

  static const String routeName = "home";



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String email = "";
  String password = "" ;
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
              onChanged: (text){
                email = text ;
              },
              decoration: InputDecoration(
                  hintText: "enter your email" ,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                  )
              ),
            ) ,
            TextFormField(
              onChanged: (text){
                password = text ;
              },
              decoration: InputDecoration(
                  hintText: "enter your password" ,
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                  )
              ),
            ) ,
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, ShowDetailes.routeName ,
                arguments: {
                  "password" : password ,
                  "email" : email
                });
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
