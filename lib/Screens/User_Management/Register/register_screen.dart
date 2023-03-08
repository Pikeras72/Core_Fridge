import 'dart:ui';

import 'package:Core_Fridge/Screens/Home/home_screen.dart';
import 'package:Core_Fridge/Screens/User_Management/Sign_In/sign_in.dart';

import 'package:flutter/material.dart';

import '../Components/InputTexto.dart';

class Register extends StatelessWidget{
  const Register([Key? key]) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            Container(
                margin: EdgeInsets.only(left: 60),
                child: Text("Create\nAccount", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green,fontSize: 45), maxLines: 2,)
            ),
            const SizedBox(height: 60),
            InputTexto(Colors.green, 60, 25, 20, 5, "Enter Name", Colors.green, 280, 25),
            const SizedBox(height: 30),
            InputTexto(Colors.green, 60, 25, 20, 5, "Enter Email", Colors.green, 280, 25),
            const SizedBox(height: 30),
            InputTexto(Colors.green, 60, 25, 20, 5, "Enter Password", Colors.green, 280, 25),
            const SizedBox(height: 30),
            InputTexto(Colors.green, 60, 25, 20, 5, "Confirm Password", Colors.green, 280, 25),
            const SizedBox(height: 80),
            Container(
                width: 154,
                height: 45,
                margin: EdgeInsets.only(left: 195),
                child: TextButton(onPressed: () =>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  )
                }, child: Center(child: Text("REGISTER", style: TextStyle(fontSize: 30,color: Colors.green),)), )
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
                  TextButton(onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sign_In()),
                    )
                  }, child: Text("Sign In", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}