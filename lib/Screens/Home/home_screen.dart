import 'package:Core_Fridge/Screens/Home/Components/BotonCircular.dart';
import 'package:Core_Fridge/Screens/Home/Components/Tarjeta.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen([Key? key]) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
         backgroundColor: Colors.white,
         elevation: 10,
         shadowColor: Colors.black,
         toolbarHeight: 120,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(35))),
         title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () => {}, icon: Icon(Icons.settings,color: Colors.black45,),iconSize: 30,),
                  Row(
                    children: [
                      Image.asset('assets/coreIcon.png',width: 40,height: 40,),
                      Image.asset('assets/coreFridge.png',width: 175,)
                    ],
                  ),
                  IconButton(onPressed: () => {}, icon: Icon(Icons.notifications), color: Colors.black26, iconSize: 30,)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BotonCircular(Colors.green,Colors.white,"Ver Todo",35),
                  Container(
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: () => {}, icon: Icon(Icons.sentiment_satisfied_alt_rounded, color: Colors.green,),splashColor: Colors.green),
                        IconButton(onPressed: () => {}, icon: Icon(Icons.sentiment_neutral_rounded, color: Colors.amber,),splashColor: Colors.amber),
                        IconButton(onPressed: () => {}, icon: Icon(Icons.sentiment_dissatisfied_rounded, color: Colors.red,),splashColor: Colors.red),
                      ],
                    ),
                  )
                ],
              )
            ],
         )
      ),
      body: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              width: 175,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(35), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BotonCircular(Colors.green, Colors.white, "Bebida", 35),
                  SizedBox(width: 5,),
                  BotonCircular(Colors.green, Colors.white, "Comida", 35),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Tarjeta(Image.asset('assets/agua.jpg'), Colors.black, 35, 35, 6),
                      Tarjeta(Image.asset('assets/aquarius.jpg'), Colors.black, 35, 35, 6),
                      Tarjeta(Image.asset('assets/cocacola.jpg'), Colors.black, 35, 35, 6),
                      Tarjeta(Image.asset('assets/fanta.jpg'), Colors.black, 35, 35, 6),
                      Tarjeta(Image.asset('assets/nestea.png'), Colors.black, 35, 35, 6),
                    ],
                  ),
                ),
            )
          ],
        ),
    );
  }
}