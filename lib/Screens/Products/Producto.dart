import 'package:flutter/material.dart';

class Producto extends StatefulWidget{
  final Image imagen;

  Producto(this.imagen);

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
              leading: Container(
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
              actions: [
                Stack(
                  clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        margin: EdgeInsets.only(top: 15),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
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
                )
            )
        ],
      )
    );
  }
}
