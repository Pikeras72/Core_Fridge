import 'package:flutter/material.dart';

//Como centrar realmente el AppBar cambiando el tamaño de la campana
class HomeScreen extends StatelessWidget{
  const HomeScreen([Key? key]) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         backgroundColor: Colors.white,
         elevation: 0,
         title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             const Icon(Icons.more_horiz, size: 25, color: Colors.black),
             CircleAvatar(
                 backgroundImage: Image.asset('assets/avatar.jpg').image
             ),
             Row(
               children: [
                 Text('0', style: const TextStyle(color: Colors.black)),
                 IconButton(onPressed: (){}, icon: const Icon(Icons.add_alert_rounded, size: 25, color: Colors.black)),
               ],
             )
           ],
         )
      ),

    );
  }
}