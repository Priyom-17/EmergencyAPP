import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        child: Text("Logged In")
        ),
    );
  }
}