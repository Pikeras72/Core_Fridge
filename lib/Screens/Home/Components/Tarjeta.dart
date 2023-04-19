import 'package:Core_Fridge/Screens/Products/Producto.dart';
import 'package:flutter/material.dart';

class Tarjeta extends StatelessWidget{

  final Image imagen;
  final Color colorSombra;
  final Producto producto;
  final double radioImagen, radioTarjeta, elevacion;
  final String textoProducto, textoCantidad;


  Tarjeta(this.imagen, this.colorSombra, this.radioImagen, this.radioTarjeta, this.elevacion, this.textoProducto, this.textoCantidad, this.producto);

  @override
  Widget build(BuildContext context) {
    double precio = producto.precioProducto;
    return GestureDetector(
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(this.radioTarjeta))),
        elevation: this.elevacion,
        shadowColor: this.colorSombra,
        margin: EdgeInsets.only(top: 12, left: 10,right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 30,),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(this.textoProducto,style: TextStyle(fontFamily: 'Monstro',fontSize: 21),),
                  SizedBox(height: 5,),
                  Text(this.textoCantidad,style: TextStyle(fontFamily: 'Monstro',color: Colors.grey,fontSize: 17),),
                  SizedBox(height: 15,),
                  Text("${precio} €",style: TextStyle(fontFamily: 'Monstro',color: Colors.green, fontSize: 30),),
                ],
              ),
            ),
            Container(
              width: 150,
              height: 150,
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(this.radioImagen),
                  child: this.imagen
              ),
            ),
          ],
        ),
      ),
      onTap: () =>{
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => this.producto),
        )
      },
    );
  }
}