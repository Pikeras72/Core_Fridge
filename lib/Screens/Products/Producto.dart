import 'package:Core_Fridge/Screens/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'Components/FlechaBotando.dart';

class Producto extends StatefulWidget{
  final Image imagen;
  final String nombreProducto, descripcionProducto;
  final int valoraciones = 27;
  final double mediaValoraciones = 4.2;

  Producto(this.imagen, this.nombreProducto, this.descripcionProducto);

  @override
  State<StatefulWidget> createState() => _firstState();
}

class _firstState extends State<Producto>{
  @override
  Widget build(BuildContext context) {
    var cart = 4;
    return Scaffold(
      backgroundColor: Color.fromARGB(245,245,245,255),
      body: CustomScrollView(
        slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 350,
              leadingWidth: 105,
              toolbarHeight: 200,
              flexibleSpace: Container(
                margin: EdgeInsets.only(top: 55, bottom: 10),
                child: widget.imagen,
              ),
              leading: GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_back_ios_new, color: Colors.black,),
                      SizedBox(width: 3,),
                      Text("VOLVER", style: TextStyle(color: Colors.black, fontFamily: 'Monstro', fontSize: 20,),)
                    ],
                  ),
                ),
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  )
                },
              ),
              actions: [
                Stack(
                  clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        margin: EdgeInsets.only(top: 15),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.shopping_basket_sharp, color: Colors.green, size: 27,),
                      ),
                      Positioned(
                        left: 32,
                        child: Container(
                          alignment: Alignment.center,
                          width: 19,
                          height: 19,
                          margin: EdgeInsets.only(top: 8),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                            color: Colors.black,
                          ),
                          child: Text("${cart}", style: TextStyle(fontSize: 15),),
                        ),
                      ),
                  ],
                ),
                SizedBox(width: 22,)
              ],
            ),
            SliverToBoxAdapter(
                child: Container(
                  height: 1500,
                  width: 500,
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)), color: Colors.green,),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 45, bottom: 15),
                        width: MediaQuery.of(context).size.width-1,
                        height: 230,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(40)), color: Colors.white,),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:35, left: 45, right: 59),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(widget.nombreProducto, style: TextStyle(color: Colors.black, fontFamily: 'Monstro', fontSize: 30,),),
                                  Container(
                                    child: FavoriteButton(
                                      isFavorite: false,
                                      iconColor: Colors.green,
                                      valueChanged: () {},
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:7, left: 45, right: 45),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Naranja", style: TextStyle(color: Colors.green, fontFamily: 'Monstro', fontSize: 25,),),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("${widget.mediaValoraciones}", style: TextStyle(fontWeight: FontWeight.bold),),
                                      Icon(Icons.star, color: Colors.green, size: 18),
                                      Text("(${widget.valoraciones}+)", style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:15, left: 45, right: 45),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 65,
                                    height: 65,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("37 G", style: TextStyle(color: Colors.green, fontFamily: 'Monstro', fontSize: 20,),),
                                        Text("Azucar", style: TextStyle(color: Colors.green, fontFamily: 'Monstro', fontSize: 13,),),
                                      ],
                                    ),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Color.fromRGBO(53, 176, 53, 0.5),),
                                  ),
                                  Container(
                                    width: 65,
                                    height: 65,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("78 MG", style: TextStyle(color: Colors.green, fontFamily: 'Monstro', fontSize: 20,),),
                                        Text("Sodio", style: TextStyle(color: Colors.green, fontFamily: 'Monstro', fontSize: 13,),),
                                      ],
                                    ),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Color.fromRGBO(53, 176, 53, 0.5),),
                                  ),
                                  Container(
                                    width: 65,
                                    height: 65,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("0 G", style: TextStyle(color: Colors.green, fontFamily: 'Monstro', fontSize: 20,),),
                                        Text("Grasa", style: TextStyle(color: Colors.green, fontFamily: 'Monstro', fontSize: 13,),),
                                      ],
                                    ),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Color.fromRGBO(53, 176, 53, 0.5),),
                                  ),
                                  Container(
                                    width: 65,
                                    height: 65,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("139 K", style: TextStyle(color: Colors.green, fontFamily: 'Monstro', fontSize: 20,),),
                                        Text("Calorías", style: TextStyle(color: Colors.green, fontFamily: 'Monstro', fontSize: 13,),),
                                      ],
                                    ),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Color.fromRGBO(53, 176, 53, 0.5),),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                        Container(
                          margin: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 15),
                          child: Text(widget.descripcionProducto, textAlign: TextAlign.center ,style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold)),
                        ),
                        FlechaBotando()
                    ],
                  ),
                )
            )
        ],
      )
    );
  }
}
