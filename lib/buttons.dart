import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final Function()? onTap;
  const button({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 100.0),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 9, 186, 26),
            borderRadius: BorderRadius.circular(10)),
        child: const Center(
            child: Text(
          "Buy Now",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        )),
      ),
    );
  }
}
