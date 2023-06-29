import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/screens/signup/screen_signup.dart';
import '../../widgets/pass_input_field.dart';
import '../../widgets/user_input_field.dart';
import './components/background.dart';
import '../../widgets/buttons.dart';
import '../../widgets/already_have_an_account.dart';


class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    TextEditingController _userController= TextEditingController();
    TextEditingController _passwordController= TextEditingController();

    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'LOGIN',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              SizedBox(height: 40),
              SvgPicture.asset(
                'assets/icons/login.svg',
                width: size.width * 0.7,
              ),
              SizedBox(height: 40),
              UserInputField(userController: _userController),
              SizedBox(height: 20),
              PasswordInputField(passwordController: _passwordController),
              SizedBox(height: 20),
              RoundedButton(
                  text: 'LOGIN',
                  textColor: Colors.white,
                  bgColor: Colors.deepPurple,
                  press: (){}
              ),
              AlreadyHaveAccount(
                pressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ScreenSignUp()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

