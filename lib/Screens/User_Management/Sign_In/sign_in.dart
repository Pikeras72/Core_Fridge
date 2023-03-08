import 'package:Core_Fridge/Screens/User_Management/Register/register_screen.dart';
import 'package:flutter/material.dart';

import '../../Home/home_screen.dart';
import '../Components/input_texto.dart';


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
            Container(
              width: double.infinity,
              height: 780,
              child: CustomPaint(
                child: Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 150),
                          Container(
                              child: Text("Hello\nAgain!", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 45), maxLines: 2,)
                          ),
                          const SizedBox(height: 235),
                          InputTexto(Colors.green, 0, 25, 20, 5, "Enter Email", Colors.green, 280, 25, Colors.green, false),
                          const SizedBox(height: 30),
                          InputTexto(Colors.green, 0, 25, 20, 5, "Enter Password", Colors.green, 280, 25, Colors.green, true),
                          const SizedBox(height: 70),
                          Container(
                              width: 125,
                              height: 45,
                              margin: EdgeInsets.only(left: 165),
                              child: TextButton(onPressed: () =>{
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => HomeScreen()),
                                )
                              }, child: Center(child: Text("SIGN IN", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),)), )
                          ),
                        ]
                    )
                ),
                painter: MiPainterPersonalizado(),
              ),
            ),
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

class MiPainterPersonalizado extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paintDarkGreen = new Paint();
    paintDarkGreen.color = Color.fromRGBO(16, 135, 27, 1);
    paintDarkGreen.style = PaintingStyle.fill;
    paintDarkGreen.strokeCap = StrokeCap.round;
    paintDarkGreen.strokeWidth = 5;

    final pathDarkGreen = new Path();
    pathDarkGreen.moveTo(size.width*0.5, 0);
    pathDarkGreen.lineTo(size.width, 0);
    pathDarkGreen.lineTo(size.width, size.height*0.3);
    pathDarkGreen.lineTo(0, size.height*0.5);
    pathDarkGreen.lineTo(0, size.height*0.25);

    canvas.drawPath(pathDarkGreen, paintDarkGreen);

    final paintLightGreen = new Paint();
    paintLightGreen.color = Color.fromRGBO(72, 194, 58, 1);
    paintLightGreen.style = PaintingStyle.fill;
    paintLightGreen.strokeCap = StrokeCap.round;
    paintLightGreen.strokeWidth = 5;

    final pathLightGreen = new Path();
    pathLightGreen.moveTo(size.width, size.height*0.3);
    pathLightGreen.lineTo(size.width, size.height*0.6);
    pathLightGreen.lineTo(size.width*0.25, size.height*0.45);

    canvas.drawPath(pathLightGreen, paintLightGreen);

    final paintMediumGreen = new Paint();
    paintMediumGreen.color = Color.fromRGBO(87, 158, 77, 1);
    paintMediumGreen.style = PaintingStyle.fill;
    paintMediumGreen.strokeCap = StrokeCap.round;
    paintMediumGreen.strokeWidth = 5;

    final pathMediumGreen = new Path();
    pathMediumGreen.moveTo(0, 0);
    pathMediumGreen.lineTo(size.width*0.5, 0);
    pathMediumGreen.lineTo(0, size.height*0.25);

    canvas.drawPath(pathMediumGreen, paintMediumGreen);

    final paintCircle = new Paint();
    paintCircle.color = Color.fromRGBO(240, 233, 115, 1);
    paintCircle.style = PaintingStyle.fill;

    final pathCircle = new Path();
    pathCircle.moveTo(size.width, size.height);

    canvas.drawCircle(Offset(size.width*0.82, size.height*0.92), 47, paintCircle);
  }

  @override
  bool shouldRepaint(MiPainterPersonalizado oldDelegate) => true;
}