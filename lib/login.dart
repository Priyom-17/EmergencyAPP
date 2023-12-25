import 'dart:math';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              //logo
              Icon(
               Icons.account_circle,
               size: 60, 

              ),
              const SizedBox(height: 10),
              //Welcome Text
              Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w800,

                ),
              ),

              const SizedBox(height: 20),

              //TextField
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                ),
              ),
            ]
            ),
        ),
      ),
    );
  }
}