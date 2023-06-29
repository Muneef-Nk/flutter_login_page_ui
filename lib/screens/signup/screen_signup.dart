import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './components/background.dart';
import '../../widgets/already_have_an_account.dart';
import '../../widgets/buttons.dart';
import '../../widgets/pass_input_field.dart';
import '../../widgets/user_input_field.dart';

class ScreenSignUp extends StatelessWidget {
  const ScreenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController _userController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      body: Background(
        child: Column(
          children: [
            Text(
              'SIGNUP',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(height: 15),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              width: size.width * 0.6,
            ),
            SizedBox(height: 15),
            UserInputField(userController: _userController),
            SizedBox(height: 15),
            PasswordInputField(passwordController: _passwordController),
            SizedBox(height: 15),
            RoundedButton(
                text: 'SIGNUP',
                textColor: Colors.white,
                bgColor: Colors.deepPurple,
                press: () {}),
            SizedBox(
              height: 10,
            ),
            AlreadyHaveAccount(
              pressed: () {
                // Navigator.of(context).
                // push(MaterialPageRoute(builder: (context)=> ScreenLogin()));
              },
              isAlreadyHave: true,
            ),
            Container(
              width: size.width * 0.8,
              child: Row(
                children: [
                  dividerForSignUp(),
                  Text(' OR ', style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),),
                  dividerForSignUp(),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: SvgPicture.asset('assets/icons/google-plus.svg',color: Colors.deepPurple,),
                ),
                SizedBox(width: 15,),
                Container(
                  padding: EdgeInsets.all(15),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: SvgPicture.asset('assets/icons/facebook.svg',color: Colors.deepPurple,),
                ),
                SizedBox(width: 15,),
                Container(
                  padding: EdgeInsets.all(15),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: SvgPicture.asset('assets/icons/twitter.svg',color: Colors.deepPurple,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget dividerForSignUp() {
    return Expanded(
      child: Divider(
        color: Colors.grey,
        thickness: 1,
      ),
    );
  }
}
