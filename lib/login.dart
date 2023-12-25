import 'package:emergency_app/comp/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final usernameController=TextEditingController();
  final passwordController=TextEditingController();

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

              //username TextField
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obsecureText: false,


              ),
              const SizedBox(height: 15),

              //password Textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obsecureText: true,
              ),
              
            ]
            ),
        ),
      ),
    );
  }
}