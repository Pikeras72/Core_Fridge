import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen([Key? key]) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         backgroundColor: Colors.white,
         elevation: 7,
         shadowColor: Colors.greenAccent,
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
                  ElevatedButton(onPressed: () => {}, child: Text("Ver Todo",style: TextStyle(color: Colors.white)),style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(35),top: Radius.circular(35))),),overlayColor: MaterialStatePropertyAll(Colors.white),backgroundColor: MaterialStatePropertyAll(Colors.green),),),
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

    );
  }
}