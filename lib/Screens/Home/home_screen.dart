import 'package:Core_Fridge/Screens/Home/Components/BotonCircular.dart';
import 'package:Core_Fridge/Screens/Home/Components/Tarjeta.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen([Key? key]) : super(key: key);
  @override
  Widget build(BuildContext context){
    var numItems = 9;
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
         automaticallyImplyLeading: false,
         backgroundColor: Colors.white,
         elevation: 10,
         shadowColor: Colors.black,
         toolbarHeight: 150,
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 268 ,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.black12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BotonCircular(Colors.green, Colors.white,"Ver Todo",10),
                        SizedBox(width: 6,),
                        BotonCircular(Colors.grey, Colors.white, "Bebida", 10),
                        SizedBox(width: 6,),
                        BotonCircular(Colors.grey, Colors.white, "Comida", 10),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${numItems} ITEMS", style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
         )
      ),
      body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Tarjeta(Image.asset('assets/agua.jpg'), Colors.black, 35, 35, 6, "Agua Mineral","500ml", 0.75),
                      Tarjeta(Image.asset('assets/aquarius.jpg'), Colors.black, 35, 35, 6, "Aquarius","330ml", 1),
                      Tarjeta(Image.asset('assets/cocacola.jpg'), Colors.black, 35, 35, 6, "CocaCola","330ml", 1),
                      Tarjeta(Image.asset('assets/donetes.jpg'), Colors.black, 35, 35, 6, "Donettes","150g", 1),
                      Tarjeta(Image.asset('assets/fanta.jpg'), Colors.black, 35, 35, 6, "Fanta","330ml", 1),
                      Tarjeta(Image.asset('assets/kitkat.jpg'), Colors.black, 35, 35, 6, "KitKat","45g", 1),
                      Tarjeta(Image.asset('assets/fuet.jpg'), Colors.black, 35, 35, 6, "Mini Fuet","50g", 1),
                      Tarjeta(Image.asset('assets/nestea.png'), Colors.black, 35, 35, 6, "Nestea","330ml", 1),
                      Tarjeta(Image.asset('assets/sandwich.jpg'), Colors.black, 35, 35, 6, "Sandwich","150g", 1.2),
                      SizedBox(height: 15,),
                    ],
                  ),
                ),
            )
          ],
        ),
    );
  }
}