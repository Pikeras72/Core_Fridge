import 'package:flutter/material.dart';

class BotonCantidadPersonalizado extends StatelessWidget{
  final int cantidad;
  final Color colorBoton, colorTexto;
  final void Function() onPressed;
  BotonCantidadPersonalizado(this.cantidad, this.colorBoton, this.colorTexto, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            child: Container(
              width: 70,
              height: 55,
              child: Text(cantidad < 10 ? "0$cantidad" : "$cantidad", style: TextStyle(color: colorTexto,  fontFamily: 'Monstro', fontSize: 27),),
              alignment: Alignment.center,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), border: Border.all(color: Colors.white,width: 1.5), color: colorBoton),
            ),
            onTap: (){
              onPressed();
            }
        ),
      ],
    );
  }
}