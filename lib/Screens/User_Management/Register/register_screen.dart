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
            Container(
              width: double.infinity,
              height: 730.5,
              child: CustomPaint(
                child: Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 120),
                        Text("Create\nAccount", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 45), maxLines: 2,),
                        const SizedBox(height: 60),
                        InputTexto(Colors.white, 0, 25, 20, 5, "Enter Name", Colors.white, 280, 25, Colors.white),
                        const SizedBox(height: 30),
                        InputTexto(Colors.white, 0, 25, 20, 5, "Enter Email", Colors.white, 280, 25, Colors.white),
                        const SizedBox(height: 30),
                        InputTexto(Colors.white, 0, 25, 20, 5, "Enter Password", Colors.white, 280, 25, Colors.white),
                        const SizedBox(height: 30),
                        InputTexto(Colors.white, 0, 25, 20, 5, "Confirm Password", Colors.white, 280, 25, Colors.white),
                        const SizedBox(height: 110),
                        Container(
                            width: 155,
                            height: 45,
                            margin: EdgeInsets.only(left: 130),
                            child: TextButton(
                              onPressed: () =>{
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeScreen()),
                              )
                            },
                              child: Center(child: Text("REGISTER", style: TextStyle(fontSize: 30,color: Colors.black, fontWeight: FontWeight.bold, ),)),
                            )
                        ),
                      ],
                    )
                ),
                painter: MiPainterPersonalizado(),
              ),
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

class MiPainterPersonalizado extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paintDarkGreen = new Paint();
    paintDarkGreen.color = Color.fromRGBO(16, 135, 27, 1);
    paintDarkGreen.style = PaintingStyle.fill;
    paintDarkGreen.strokeCap = StrokeCap.round;
    paintDarkGreen.strokeWidth = 5;

    final pathDarkGreen = new Path();
    pathDarkGreen.moveTo(size.width*0.3, 0);
    pathDarkGreen.lineTo(size.width, 0);
    pathDarkGreen.lineTo(size.width, size.height*0.45);
    pathDarkGreen.lineTo(0, size.height*0.70);
    pathDarkGreen.lineTo(0, size.height*0.35);

    canvas.drawPath(pathDarkGreen, paintDarkGreen);

    final paintLightGreen = new Paint();
    paintLightGreen.color = Color.fromRGBO(72, 194, 58, 1);
    paintLightGreen.style = PaintingStyle.fill;
    paintLightGreen.strokeCap = StrokeCap.round;
    paintLightGreen.strokeWidth = 5;

    final pathLightGreen = new Path();
    pathLightGreen.moveTo(size.width, size.height*0.45);
    pathLightGreen.lineTo(size.width, size.height*0.96);
    pathLightGreen.lineTo(0, size.height*0.84);
    pathLightGreen.lineTo(0, size.height*0.70);

    canvas.drawPath(pathLightGreen, paintLightGreen);

    final paintMediumGreen = new Paint();
    paintMediumGreen.color = Color.fromRGBO(87, 158, 77, 1);
    paintMediumGreen.style = PaintingStyle.fill;
    paintMediumGreen.strokeCap = StrokeCap.round;
    paintMediumGreen.strokeWidth = 5;

    final pathMediumGreen = new Path();
    pathMediumGreen.moveTo(0, 0);
    pathMediumGreen.lineTo(size.width*0.3, 0);
    pathMediumGreen.lineTo(0, size.height*0.35);

    canvas.drawPath(pathMediumGreen, paintMediumGreen);

    final paintCircle = new Paint();
    paintCircle.color = Color.fromRGBO(240, 233, 115, 1);
    paintCircle.style = PaintingStyle.fill;

    final pathCircle = new Path();
    pathCircle.moveTo(size.width, size.height);

    canvas.drawCircle(Offset(size.width*0.815, size.height*0.97), 47, paintCircle);
  }

  @override
  bool shouldRepaint(MiPainterPersonalizado oldDelegate) => true;
}