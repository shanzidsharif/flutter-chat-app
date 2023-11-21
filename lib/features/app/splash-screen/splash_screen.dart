import 'package:flutter/material.dart';

class _SplashScreen extends StatefulWidget {
  const _SplashScreen();

  @override
  State<_SplashScreen> createState() => __SplashScreenState();
}

class __SplashScreenState extends State<_SplashScreen> {
  
  @override

  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Welcome To Chat Box", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
      ),
    );
  }
}