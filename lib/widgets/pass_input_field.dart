import 'package:flutter/material.dart';

import '../../../widgets/rounded_input_container.dart';

class PasswordInputField extends StatelessWidget {
  const PasswordInputField({
    required TextEditingController passwordController,
  }) : _passwordController = passwordController;

  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    bool isObsecure=true;
    return RoundedInputContainer(
      child: Center(
        child: TextFormField(
          obscureText: isObsecure,
          // controller: _passwordController,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock, color: Colors.deepPurple,size: 20,),
              suffixIcon: Icon(Icons.visibility, color: Colors.deepPurple, size: 20,),
              hintText: 'password',
              hintStyle: TextStyle(color: Colors.deepPurple),
              border: InputBorder.none
          ),
        ),
      ),
    );
  }
}
