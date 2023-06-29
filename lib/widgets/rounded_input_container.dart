import 'package:flutter/material.dart';

class RoundedInputContainer extends StatelessWidget {
  final Widget child;

  const RoundedInputContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: 3, left: 10),
      width: size.width*0.8,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(30)
      ),
      child: child,
    );
  }
}