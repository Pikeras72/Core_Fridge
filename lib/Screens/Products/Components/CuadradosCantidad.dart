import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SubComponents/BotonCantidadPersonalizado.dart';

class CuadradosCantidad extends StatefulWidget{
  final precioUnidad;
  CuadradosCantidad(this.precioUnidad);
  @override
  State<StatefulWidget> createState() => _firstState();
}

class _firstState extends State<CuadradosCantidad>{
  int _botonSeleccionado = -1;
  double precioTotal = 0.0, precioUnidad = 0;
  @override
  void initState() {
    precioUnidad = widget.precioUnidad;
  }
  void setSeleccionado(int index){
    setState(() {
      _botonSeleccionado = index;
      precioTotal = precioUnidad*(_botonSeleccionado);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for(int i = 1; i<5;i++)
                BotonCantidadPersonalizado(i, _botonSeleccionado == null ? Colors.white : _botonSeleccionado == i ? Colors.white : Colors.transparent, _botonSeleccionado == null ? Colors.black : _botonSeleccionado == i ? Colors.black : Colors.white, () { setSeleccionado(i); })
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text("Total: ", style: TextStyle(color: Colors.white,  fontFamily: 'Monstro', fontSize: 24),),
                      Text("$precioTotal €", style: TextStyle(color: Colors.white,  fontFamily: 'Monstro', fontSize: 35),),
                    ],
                  ),
                ),
                GestureDetector(
                    child: Container(
                      width: 160,
                      height: 60,
                      child: Text("Añadir al carrito", textAlign: TextAlign.center, style: TextStyle(color: Colors.black,  fontFamily: 'Monstro', fontSize: 22),),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)), border: Border.all(color: Colors.white,width: 1.5), color: Colors.white),
                    ),
                    onTap: (){

                    }
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}