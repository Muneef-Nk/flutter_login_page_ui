import 'package:flutter/material.dart';
import 'package:login/screens/signup/screen_signup.dart';

import '../screens/login/screen_login.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;
  final Function press;

  RoundedButton({
    required this.text,
    required this.textColor,
    required this.bgColor,
    required this.press,
  });


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.8,
        height: 60,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: TextButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenLogin()));
        },
          child: Text(text, style: TextStyle(color: textColor),),
        )
    );
  }
}