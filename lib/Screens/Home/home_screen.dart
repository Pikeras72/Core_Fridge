import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen([Key? key]) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              const Icon(Icons.menu),
              CircleAvatar(
                  backgroundImage: Image.asset('assets/avatar.jpg').image
              )
            ],
          )
      ),

    );
  }
}