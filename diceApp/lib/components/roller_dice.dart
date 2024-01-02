import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();
class RollerDice extends StatefulWidget {
  const RollerDice({super.key});

  @override
  State<RollerDice> createState() => _RollerDiceState();
}

class _RollerDiceState extends State<RollerDice> {
  var currentDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
              Image.asset("assets/dice-${currentDiceNumber}.png",width: 100,height: 100,),
              SizedBox(height: 8,),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepPurple),
                  foregroundColor: MaterialStateColor.resolveWith((states) => Colors.grey.shade200),
                  padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.symmetric(horizontal: 30.0))
                ),
                onPressed: (){
                  setState(() {
                    currentDiceNumber = randomizer.nextInt(6)+1;
                    // activedImage = "assets/dice-${randomNumber}.png";
                  });
                }, child: Text("Roll dice")
        )
      ],
    );
  }
}