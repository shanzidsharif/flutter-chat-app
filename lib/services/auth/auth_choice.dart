import 'package:chat_app_box/components/services/auth/login_or_register.dart';
import 'package:chat_app_box/pages/HomePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class AuthChoice extends StatelessWidget {
  const AuthChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          // User is Logged in
          if(snapshot.hasData)
          {
              return const HomePage();
          }

          // User is Logged Out
          else
        {
          return const LoginOrRegisterPage();
        }
        },
      ),
    );
  }
}