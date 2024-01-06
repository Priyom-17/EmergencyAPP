import 'package:emergency_app/comp/my_button.dart';
import 'package:emergency_app/comp/my_textfield.dart';
import 'package:emergency_app/comp/square_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
   LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController=TextEditingController();

  final passwordController=TextEditingController();

  void signInUser() async {

    //show loading circle
    showDialog(
      context: context, 
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );

      },
      );


    //try sign in
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: usernameController.text, 
      password: passwordController.text,
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              //logo
              const Icon(
               Icons.account_circle,
               size: 80, 

              ),
              const SizedBox(height: 10),
              //Welcome Text
              const Text(
                'Welcome',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 28,
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
              const Text(
                'Forgot password?',
                style: TextStyle(
                  color: Color.fromARGB(255, 4, 102, 84),
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                  ),
                ),
                const SizedBox(height: 20),

                MyButton(
                  onTap: signInUser,
                ),
                /*ElevatedButton(onPressed: (){
                  signInUser();
                }, 
                child: Text("Login")),*/
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
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                        ),
                      const Expanded(
                        child: Divider(
                          thickness: 1.2,
                          color: Colors.grey,
                        ),
                        ),
                  ],
                ),
                const SizedBox(height: 30),
                //google and apple image
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google button
                    SquareTile(imagepath: 'images/google.png'),

                    SizedBox(width: 20),

                    //apple image
                    SquareTile(imagepath: 'images/facebook.png'),
                  ],
                ),

                const SizedBox(height: 30),
                
                //not a member

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a Member?',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      ),
                    SizedBox(width: 10),
                    Text(
                      'Register Now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),

                    )


                  ],
                  )

              
            ]
            ),
        ),
      ),
    );
  }
}