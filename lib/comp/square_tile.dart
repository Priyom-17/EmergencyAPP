import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagepath;
  const SquareTile({
    super.key,
    required this.imagepath,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black87),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        ),
      
      child: Image.asset(
        imagepath,
        height: 40,
      ),
    );
  }
}