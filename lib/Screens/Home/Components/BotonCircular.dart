import 'package:flutter/material.dart';

class BotonCircular extends StatelessWidget{

  final Color color, colorTexto, colorOverlay;
  final String texto;
  final double radio;

  BotonCircular(this.color, this.colorTexto, this.texto, this.radio, [this.colorOverlay = Colors.black26]);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () => {
      //PONER UN BORDE DE COLOR AL CLICKEAR EL BOTON
    },style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(this.radio),top: Radius.circular(this.radio))),),overlayColor: MaterialStatePropertyAll(this.colorOverlay),backgroundColor: MaterialStatePropertyAll(this.color),), child: Text(this.texto,style: TextStyle(color: this.colorTexto)),);
  }
}