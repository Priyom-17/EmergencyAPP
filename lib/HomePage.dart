import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final user=FirebaseAuth.instance.currentUser!;
  //signout method
  void signOutUser() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signOutUser,
             icon: Icon(
              Icons.logout,
             )
            )
        ],
      ),
      body: Center(
        child: Text(
          "Logged In As: "+user.email!,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )
        ),
    );
  }
}