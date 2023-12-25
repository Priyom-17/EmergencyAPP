import 'package:emergency_app/comp/my_button.dart';
import 'package:emergency_app/comp/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final usernameController=TextEditingController();
  final passwordController=TextEditingController();

  void signInUser(){}

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
              const SizedBox(height: 15),

              //forgot password?
              Text(
                'Forgot password?',
                style: TextStyle(color: Colors.grey[600]),
                ),
                const SizedBox(height: 20),

                MyButton(
                  onTap: signInUser,
                ),
                const SizedBox(height: 40),

                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1.2,
                        color: Colors.grey[600],
                      ),
                      ),
                      Text(
                        'Or Continue with',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900
                        ),
                        ),
                      Expanded(
                        child: Divider(
                          thickness: 1.2,
                          color: Colors.grey,
                        ),
                        ),
                  ],
                ),
              
            ]
            ),
        ),
      ),
    );
  }
}