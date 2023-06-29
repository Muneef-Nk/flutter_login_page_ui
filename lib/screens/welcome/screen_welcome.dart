import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import '../../widgets/buttons.dart';
import './components/background.dart';

class ScreenWelcome extends StatelessWidget {
  const ScreenWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
       body: Background(
         child:  Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             SizedBox(height: 40),
             Text(
               'WELCOME SCREEN',
               style: TextStyle(
                   color: Colors.deepPurple,
                   fontWeight: FontWeight.bold,
                   fontSize: 15),
             ),
             SizedBox(height: 40),
             SvgPicture.asset(
               'assets/icons/chat.svg',
               width: size.width * 0.8,
             ),
             SizedBox(height: 40),
             RoundedButton(
               press: (){},
               textColor: Colors.white,
               text: 'LOGIN',
               bgColor: Colors.deepPurple,
             ),
             SizedBox(height: 10),
             RoundedButton(
               press: (){},
               textColor: Colors.deepPurple,
               text: 'SIGNUP',
               bgColor:kbgColor,
             ),
           ],
         ),
       ),
    );
  }


}
