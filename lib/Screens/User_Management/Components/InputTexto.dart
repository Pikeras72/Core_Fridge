import 'package:flutter/material.dart';

class InputTexto extends StatelessWidget{

  final Color colorTexto, colorCursor;
  final double anchoInput, anchoCursor, margenIzquierdo, alturaCursor, tamanioLetra, paddingVertical;
  final String texto;

  InputTexto(this.colorTexto, this.margenIzquierdo, this.alturaCursor, this.tamanioLetra, this.paddingVertical, this.texto, this.colorCursor, this.anchoInput, this.anchoCursor);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: this.margenIzquierdo),
        child: Container(
          width: this.anchoInput,
          child: TextField(cursorColor: this.colorCursor,cursorHeight: this.anchoCursor,style: TextStyle(fontSize: this.tamanioLetra,color: this.colorTexto),decoration: InputDecoration(labelText: this.texto, contentPadding: EdgeInsets.symmetric(vertical: this.paddingVertical), labelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.green, fontSize: this.tamanioLetra-3)),),
        )
    );
  }
}