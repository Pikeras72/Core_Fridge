import 'package:Core_Fridge/Screens/Home/Components/BotonCircular.dart';
import 'package:Core_Fridge/Screens/Home/Components/Tarjeta.dart';
import 'package:Core_Fridge/Screens/Products/Producto.dart';
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
                      GestureDetector(
                        child: Container(
                          child: CircleAvatar(
                            child: Image.asset('assets/images/fotoPerfilPrueba.png'),
                          ),
                          margin: EdgeInsets.only(top: 10),
                        ),
                        onTap: () => {
                            Scaffold.of(context).openDrawer()
                        }
                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/coreIcon.png',width: 40,height: 40,),
                          Image.asset('assets/images/coreFridge.png',width: 175,)
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: IconButton(onPressed: () => {}, icon: Icon(Icons.notifications), color: Colors.black26, iconSize: 30,),
                      )
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
                      Tarjeta(Image.asset('assets/images/agua.jpg'), Colors.black, 35, 35, 6, "Agua Mineral","500ml", 0.75, Producto(Image.asset('assets/images/aguaProducto.png'),"Agua Mineral","Contiene minerales y otras sustancias disueltas como gases, sales o compuestos sulfurados que modifican y enriquecen su sabor y le brindan propiedades terapéuticas")),
                      Tarjeta(Image.asset('assets/images/aquarius.jpg'), Colors.black, 35, 35, 6, "Aquarius","330ml", 1, Producto(Image.asset('assets/images/aquariusProducto.png'), "Aquarius","Bebida complementaria para deportistas, especialmente dirigida para las personas que disfrutan de un estilo de vida activo y saludable")),
                      Tarjeta(Image.asset('assets/images/cocacola.jpg'), Colors.black, 35, 35, 6, "CocaCola","330ml", 1, Producto(Image.asset('assets/images/cocaColaProducto.png'), "CocaCola","Bebida azucarada gaseosa vendida a nivel mundial en tiendas, restaurantes y máquinas expendedoras en más de doscientos países o territorios")),
                      Tarjeta(Image.asset('assets/images/donetes.jpg'), Colors.black, 35, 35, 6, "Donettes","150g", 1, Producto(Image.asset('assets/images/donetesProducto.png'), "Donettes","Pequeñas rosquillas dulces bañadas en chocolate blanco y chocolate negro. En la boca tiene  un sabor dulce, donde constrastan la textura del chocolate y de la rosquilla")),
                      Tarjeta(Image.asset('assets/images/fanta.jpg'), Colors.black, 35, 35, 6, "Fanta","330ml", 1, Producto(Image.asset('assets/images/fantaProducto.png'), "Fanta", "Bebida refrescante de zumo de frutas con azúcares y edulcorantes, gran variedad de bebidas para satisfacer las necesidades de un amplio abanico de consumidores")),
                      Tarjeta(Image.asset('assets/images/kitkat.jpg'), Colors.black, 35, 35, 6, "KitKat","45g", 1, Producto(Image.asset('assets/images/kitkatProducto.png'), "KitKat","El equilibrio perfecto entre chocolate y galleta con cuatro barritas de galleta cubiertas de chocolate con leche. El descanso favorito del mundo")),
                      Tarjeta(Image.asset('assets/images/fuet.jpg'), Colors.black, 35, 35, 6, "Mini Fuet","50g", 1, Producto(Image.asset('assets/images/fuetProducto.png'), "Mini Fuet", "El fuet de siempre en un formato listo para consumir. Cómodo, práctico y listo para llevar.")),
                      Tarjeta(Image.asset('assets/images/nestea.png'), Colors.black, 35, 35, 6, "Nestea","330ml", 1, Producto(Image.asset('assets/images/nesteaProducto.png'), "Nestea","Dedícate un momento solo para ti y descubre NESTEA. Saborea tu momento con cada sorbo de NESTEA y disfruta de un instante muy refrescante.")),
                      Tarjeta(Image.asset('assets/images/sandwich.jpg'), Colors.black, 35, 35, 6, "Sandwich","150g", 1.2, Producto(Image.asset('assets/images/sandwichProducto.png'), "Sandwich","Una de las comidas más variadas y accesibles de la actualidad. El alimento perfecto: portátil y tan simple o elaborado como lo permita el estado de ánimo del consumidor. ")),
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
              OpcionDrawer("Favoritos",Icon(Icons.favorite)),
              Divider(color: Colors.black,),
              OpcionDrawer("Cerrar Sesión",Icon(Icons.logout)),
              Divider(color: Colors.black,)
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        splashColor: Color.fromRGBO(72, 205, 58, 1),
        backgroundColor: Colors.green,
        elevation: 12,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              child: Icon(Icons.shopping_basket_sharp, color: Colors.white, size: 27,),
            ),
            Positioned(
              left: 38,
              child: Container(
                alignment: Alignment.center,
                width: 22,
                height: 22,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  color: Colors.black,
                ),
                child: Text("4", style: TextStyle(fontSize: 16),),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}