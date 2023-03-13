import 'package:flutter/material.dart';

class OpcionDrawer extends StatelessWidget{

  final String texto;
  final Icon icono;
  //EN UN FUTURO SE PASARÁ POR PARAMETRO LA FUNCION A REALIZAR

  OpcionDrawer(this.texto, this.icono);

  //ESTARÁ ENVUELTO CON GESTURE DETECTOR
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,right: 5, left: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                this.icono,
                SizedBox(width: 13,),
                Text(this.texto,style: TextStyle(fontSize: 17,fontFamily: 'Glegoo', fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Icon(Icons.arrow_right),
        ],
      ),
    );
  }
}