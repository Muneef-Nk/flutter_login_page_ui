import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;
  final  Function press;

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
        onPressed:(){
          press();
        },
            //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenSignUp())),
          child: Text(text, style: TextStyle(color: textColor),),
        )
    );
  }
}