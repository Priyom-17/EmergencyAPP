import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black87),
      child: Center(
        child: Text(
          "Sign in",
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}