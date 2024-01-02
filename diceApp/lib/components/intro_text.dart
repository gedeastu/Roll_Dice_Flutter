import 'package:flutter/material.dart';

class IntroText extends StatelessWidget {
  IntroText({required this.text, super.key});
  final String text;

  String name = "Gede Astu Nugraha";
  @override
  Widget build(BuildContext context) {
    return 
    Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(text,style: TextStyle(color: Colors.grey.shade200,fontWeight: FontWeight.bold),),
            Text("I'am $name",style: TextStyle(color: Colors.grey.shade200,fontWeight: FontWeight.bold),)
          ],
        ),
    );
  }
}