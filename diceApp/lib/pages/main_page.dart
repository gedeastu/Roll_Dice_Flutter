import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_udemy/components/intro_text.dart';
import 'package:flutter_udemy/components/roller_dice.dart';

class Main extends StatefulWidget {
  final List<Color> colors;
  Main({required this.colors, super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  // void _rolledDice(){
  //   activedImage = "assets/dice-4.png";
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: widget.colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IntroText(text: "Hello World"),
              SizedBox(height: 8,),
              RollerDice()
            ],
          ),
        ),
      ),
    );
  }
}