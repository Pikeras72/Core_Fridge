import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuadradosInfo extends StatelessWidget{

  final int cantidad;
  final String especificacion, medida;

  CuadradosInfo(this.cantidad, this.especificacion, this.medida);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$cantidad "+this.medida, style: TextStyle(color: Colors.green, fontFamily: 'Monstro', fontSize: 20,),),
          Text(this.especificacion, style: TextStyle(color: Colors.green, fontFamily: 'Monstro', fontSize: 13,),),
        ],
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Color.fromRGBO(165, 232, 167, 1), boxShadow: [BoxShadow(color: Colors.green, blurRadius: 2.0,spreadRadius: 0.0, offset: Offset(2.5, 2.5),)]),
    );
  }

}