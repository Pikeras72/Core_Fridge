import 'package:flutter/material.dart';

class Tarjeta extends StatelessWidget{

  final Image imagen;
  final Color colorSombra;
  final double radioImagen, radioTarjeta, elevacion;

  Tarjeta(this.imagen, this.colorSombra, this.radioImagen, this.radioTarjeta, this.elevacion);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(255, 249, 227, 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(this.radioTarjeta))),
      elevation: this.elevacion,
      shadowColor: this.colorSombra,
      margin: EdgeInsets.only(left: 10,right: 10, bottom: 12),
      child: Row(
        children: [
          Container(
            width: 150,
            height: 150,
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(this.radioImagen),
              child: this.imagen
            ),
          )

        ],
      ),
    );
  }
}