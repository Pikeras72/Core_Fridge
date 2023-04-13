import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CuadradosCantidad extends StatefulWidget{

  final int cantidad;

  CuadradosCantidad(this.cantidad);

  @override
  State<StatefulWidget> createState() => _firstState();

}

class _firstState extends State<CuadradosCantidad>{
  get cantidad => widget.cantidad;
  Color colorTexto = Colors.white, colorFondo = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 70,
        height: 55,
        child: Text(cantidad < 10 ? "0$cantidad" : "$cantidad", style: TextStyle(color: colorTexto,  fontFamily: 'Monstro', fontSize: 27),),
        alignment: Alignment.center,
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), border: Border.all(color: Colors.white,width: 1.5), color: colorFondo),
      ),
      onTap: (){
        setState(() {
          colorTexto = colorTexto == Colors.black ? Colors.white : Colors.black;
          colorFondo = colorFondo == Colors.transparent ? Colors.white : Colors.transparent;
        });
      }
    );
  }
}