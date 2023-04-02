import 'dart:async';

import 'package:flutter/material.dart';

class FlechaBotando extends StatefulWidget {
  @override
  State<FlechaBotando> createState() => _flechaBotando();
}

class _flechaBotando extends State<FlechaBotando>{
  late double marginTop;

  void changePosition(Timer t) async {
    setState(() {
      marginTop = marginTop == 0 ? 15 : 0;
    });
  }

  @override
  void initState() {
    marginTop = 0;
    Timer.periodic(const Duration(milliseconds: 600), changePosition);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: marginTop),
        child: Icon(Icons.arrow_upward, color: Colors.white)
    );
  }
}