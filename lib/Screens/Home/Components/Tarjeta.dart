import 'package:flutter/material.dart';

class Tarjeta extends StatelessWidget{

  final Image imagen;
  final Color colorSombra;
  final double radioImagen, radioTarjeta, elevacion;
  final String textoProducto;

  Tarjeta(this.imagen, this.colorSombra, this.radioImagen, this.radioTarjeta, this.elevacion, this.textoProducto);

  @override
  Widget build(BuildContext context) {
    return Card(
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
               Text(this.textoProducto,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
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
    );
  }
}