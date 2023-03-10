import 'package:Core_Fridge/Screens/Home/Components/BotonCircular.dart';
import 'package:Core_Fridge/Screens/Home/Components/Tarjeta.dart';
import 'package:flutter/material.dart';
import 'Components/OpcionDrawer.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen([Key? key]) : super(key: key);
  @override
  Widget build(BuildContext context){
    var numItems = 9;
    return Scaffold(
      backgroundColor: Colors.green,
      drawerScrimColor: Colors.white30,
      appBar: AppBar(
         automaticallyImplyLeading: false,
         backgroundColor: Colors.white,
         elevation: 10,
         shadowColor: Colors.black,
         toolbarHeight: 150,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(35))),
         title: Column(
            children: [
              Builder(
                builder: (context) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: ()  {
                        Scaffold.of(context).openDrawer();
                      }, icon: Icon(Icons.menu,color: Colors.black45,),iconSize: 30,),
                      Row(
                        children: [
                          Image.asset('assets/images/coreIcon.png',width: 40,height: 40,),
                          Image.asset('assets/images/coreFridge.png',width: 175,)
                        ],
                      ),
                      IconButton(onPressed: () => {}, icon: Icon(Icons.notifications), color: Colors.black26, iconSize: 30,)
                    ],
                  );
                }
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
                    Text("${numItems} ITEMS", style: TextStyle(color: Colors.black38, fontFamily: 'Glegoo', fontSize: 14, fontWeight: FontWeight.bold)),
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
                      Tarjeta(Image.asset('assets/images/agua.jpg'), Colors.black, 35, 35, 6, "Agua Mineral","500ml", 0.75),
                      Tarjeta(Image.asset('assets/images/aquarius.jpg'), Colors.black, 35, 35, 6, "Aquarius","330ml", 1),
                      Tarjeta(Image.asset('assets/images/cocacola.jpg'), Colors.black, 35, 35, 6, "CocaCola","330ml", 1),
                      Tarjeta(Image.asset('assets/images/donetes.jpg'), Colors.black, 35, 35, 6, "Donettes","150g", 1),
                      Tarjeta(Image.asset('assets/images/fanta.jpg'), Colors.black, 35, 35, 6, "Fanta","330ml", 1),
                      Tarjeta(Image.asset('assets/images/kitkat.jpg'), Colors.black, 35, 35, 6, "KitKat","45g", 1),
                      Tarjeta(Image.asset('assets/images/fuet.jpg'), Colors.black, 35, 35, 6, "Mini Fuet","50g", 1),
                      Tarjeta(Image.asset('assets/images/nestea.png'), Colors.black, 35, 35, 6, "Nestea","330ml", 1),
                      Tarjeta(Image.asset('assets/images/sandwich.jpg'), Colors.black, 35, 35, 6, "Sandwich","150g", 1.2),
                      SizedBox(height: 15,),
                    ],
                  ),
                ),
            )
          ],
        ),
        drawer: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width*0.7,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.7,
                height: 225,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(16, 135, 27, 1),
                      Color.fromRGBO(72, 205, 58, 1)
                    ],
                    stops: [0.25,0.75]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Image.asset('assets/images/Core_Fridge_Icon.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("Core Fridge", style: TextStyle(fontFamily: 'Glegoo',fontSize: 26,color: Colors.white, fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ),
              OpcionDrawer("Perfil",Icon(Icons.person)),
              Divider(color: Colors.black,),
              OpcionDrawer("Ajustes",Icon(Icons.settings)),
              Divider(color: Colors.black,),
              OpcionDrawer("Cerrar Sesi??n",Icon(Icons.logout)),
              Divider(color: Colors.black,)
            ],
          ),
        ),
    );
  }
}