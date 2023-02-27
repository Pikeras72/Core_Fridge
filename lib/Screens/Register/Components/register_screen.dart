import 'dart:ui';

import 'package:flutter/material.dart';

class Register extends StatelessWidget{
  const Register([Key? key]) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            Container(
                margin: EdgeInsets.only(left: 60),
                child: Text("Create\nAccount", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green,fontSize: 45), maxLines: 2,)
            ),
            const SizedBox(height: 60),
            Container(
                margin: EdgeInsets.only(left: 60),
                child: Container(
                  width: 280,
                  child: TextField(cursorColor: Colors.green,cursorHeight: 25,style: TextStyle(fontSize: 20,color: Colors.green),decoration: InputDecoration(labelText: "Enter Name", contentPadding: EdgeInsets.symmetric(vertical: 5), labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 17)),),
                )
            ),
            const SizedBox(height: 30),
            Container(
                margin: EdgeInsets.only(left: 60),
                child: Container(
                  width: 280,
                  child: TextField(cursorColor: Colors.green,cursorHeight: 25,style: TextStyle(fontSize: 20,color: Colors.green),decoration: InputDecoration(labelText: "Enter Email", contentPadding: EdgeInsets.symmetric(vertical: 5), labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 17)),),
                )
            ),
            const SizedBox(height: 30),
            Container(
                margin: EdgeInsets.only(left: 60),
                child: Container(
                  width: 280,
                  child: TextField(obscureText: true,cursorColor: Colors.green,cursorHeight: 25,style: TextStyle(fontSize: 20,color: Colors.green),decoration: InputDecoration(labelText: "Enter Password", contentPadding: EdgeInsets.symmetric(vertical: 5), labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 17)),),
                )
            ),
            const SizedBox(height: 30),
            Container(
                margin: EdgeInsets.only(left: 60),
                child: Container(
                  width: 280,
                  child: TextField(obscureText:true, cursorColor: Colors.green,cursorHeight: 25,style: TextStyle(fontSize: 20,color: Colors.green),decoration: InputDecoration(labelText: "Confirm Password", contentPadding: EdgeInsets.symmetric(vertical: 5), labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: 17)),),
                )
            ),
            const SizedBox(height: 80),
            Container(
                width: 154,
                height: 45,
                margin: EdgeInsets.only(left: 195),
                child: TextButton(onPressed: () =>{}, child: Center(child: Text("REGISTER", style: TextStyle(fontSize: 30,color: Colors.green),)), )
            ),
            const SizedBox(height:60),
            Container(
              width: 223,
              height: 35,
              margin: EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: TextStyle(color: Colors.green),),
                  TextButton(onPressed: () => {}, child: Text("Sign In", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),))
                ],
              ),
            )
          ],
        ),
    );
  }
}