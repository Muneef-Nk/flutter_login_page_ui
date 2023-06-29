import 'package:flutter/material.dart';

import '../../../widgets/rounded_input_container.dart';

class UserInputField extends StatelessWidget {
  const UserInputField({
    required TextEditingController userController,
  }) : _userController = userController;

  final TextEditingController _userController;

  @override
  Widget build(BuildContext context) {
    return RoundedInputContainer(
      child: Center(
        child: TextFormField(
          // controller: _userController,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.person, color: Colors.deepPurple,size: 20,),
              hintText: 'username',
              hintStyle: TextStyle(color: Colors.deepPurple),
              border: InputBorder.none
          ),
        ),
      ),);
  }
}
