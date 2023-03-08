import 'package:Core_Fridge/Screens/User_Management/Register/register_screen.dart';
import 'package:flutter/material.dart';

import '../../Home/home_screen.dart';
import '../Components/InputTexto.dart';


class Sign_In extends StatelessWidget{
  const Sign_In([Key? key]) : super(key: key);
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
                child: Text("Hello\nAgain!", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green,fontSize: 45), maxLines: 2,)
            ),
            const SizedBox(height: 60),
            InputTexto(Colors.green, 60, 25, 20, 5, "Enter Email", Colors.green, 280, 25, Colors.green),
            const SizedBox(height: 30),
            InputTexto(Colors.green, 60, 25, 20, 5, "Enter Password", Colors.green, 280, 25, Colors.green),
            const SizedBox(height: 240),
            Container(
                width: 154,
                height: 45,
                margin: EdgeInsets.only(left: 215),
                child: TextButton(onPressed: () =>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  )
                }, child: Center(child: Text("SIGN IN", style: TextStyle(fontSize: 30,color: Colors.green),)), )
            ),
            const SizedBox(height:60),
            Container(
              width: 250,
              height: 35,
              margin: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You don't have an account?", style: TextStyle(color: Colors.green),),
                  TextButton(onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    )
                  }, child: Text("Register", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}