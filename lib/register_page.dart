import 'package:emergency_app/comp/my_button.dart';
import 'package:emergency_app/comp/my_textfield.dart';
import 'package:emergency_app/comp/square_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:emergency_app/HomePage.dart';



class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key,required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController=TextEditingController();

  final passwordController=TextEditingController();

  final confirmpasswordController=TextEditingController();

  void signUpUser() async {

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
    try {
      if (passwordController.text == confirmpasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: usernameController.text, 
        password: passwordController.text,
       );
      }
      else {
        showErrorMessage("Passwords don't match");
      }
      //pop navigator
      Navigator.pop(context);
    } on FirebaseAuthException catch(e) {
      //pop navigator
      Navigator.pop(context);
      showErrorMessage(e.code);
    }
    
  }

  //error message
  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white
              ),
            ),
          ),
        );

      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
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
                  'Lets Create a Account for you',
                  style: TextStyle(
                    color: Color.fromARGB(221, 13, 37, 216),
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

                //password Textfield
                MyTextField(
                  controller: confirmpasswordController,
                  hintText: 'Cofirm Password',
                  obsecureText: true,
                ),
            
                  const SizedBox(height: 20),
            
                  MyButton(
                    text: "Sign UP",
                    onTap: signUpUser,
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
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already Have An Account?',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: widget.onTap,
                        child: Text(
                          'Login Now',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                                    
                        ),
                      ),
            
            
                    ],
                    )
            
                
              ]
              ),
          ),
        ),
      ),
    );
  }
}