import 'package:chat_app_box/pages/loginPage.dart';
import 'package:chat_app_box/pages/registerPage.dart';
import 'package:flutter/material.dart';

class LoginOrRegisterPage extends StatefulWidget {
  const LoginOrRegisterPage({super.key});

  @override
  State<LoginOrRegisterPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegisterPage> {
  
  bool showLoginPage = true;
  void togglePages()
  {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  
  @override
  Widget build(BuildContext context) {

    if(showLoginPage)
    {
      return LoginPage(onTap: togglePages);
    }
    else
    {
      return RegisterPage(onTap: togglePages);
    }
  }
}