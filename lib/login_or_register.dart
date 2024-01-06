import 'package:emergency_app/login.dart';
import 'package:emergency_app/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  //intially show login page
  bool showLoginPage = true;

  //toggle
  void togglePages() {
    setState(() {
      showLoginPage =!showLoginPage;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(
        onTap: togglePages,
      );
    }
    else {
      return RegisterPage(
        onTap: togglePages,
      );
    }
  }
}