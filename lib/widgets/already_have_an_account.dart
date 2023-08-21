import 'package:flutter/material.dart';
import 'package:login/screens/login/screen_login.dart';
import 'package:login/screens/signup/screen_signup.dart';
import 'package:login/screens/welcome/screen_welcome.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final bool isAlreadyHave;
  final Function pressed;
  const AlreadyHaveAccount({
    super.key,
    required this.pressed,
    this.isAlreadyHave=false
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          isAlreadyHave? 'Already have an account?': 'Dont have an account?',
          style: TextStyle(
              color: Colors.deepPurple, fontWeight: FontWeight.w500),
        ),
        TextButton(
          onPressed: (){
           isAlreadyHave?
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenLogin()))
               : Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenSignUp()));
          },
          child: Text(
            isAlreadyHave? 'Sign In':'Sign Up',
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
