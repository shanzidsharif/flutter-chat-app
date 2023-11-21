import 'package:chat_app_box/components/my_button_file.dart';
import 'package:flutter/material.dart';
import '../components/my_text_file.dart';

// ignore: must_be_immutable
class RegisterPage extends StatefulWidget {
  void Function()? onTap;
   RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  
  // sign up function for onTap
  void signUp() {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade50,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
                const Icon(Icons.message,
                size: 80,
                color: Colors.deepOrange,
                ),
              // message
              const SizedBox(height: 50),
                const Text(
                  "This is Register Page",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
              // text
              const SizedBox(height: 25),

              MyTextField(
                controller: emailController, 
                hintText: "Enter Email",
                 obscureText: false
                 ),
              // password
              const SizedBox(height: 25),
              
              MyTextField(
                controller: passwordController,
                 hintText: "Enter Password",
                 obscureText: true
                 ),

                 const SizedBox(height: 25),
              MyTextField(
                controller: confirmPasswordController,
                 hintText: "Confirm Password",
                 obscureText: true
                 ),
              // signup
              const SizedBox(height: 50),

              MyButton(onTap: signUp, text: "Sign Up"),
              // register?
              const SizedBox(height: 50),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  const Text("Already Have a Account?"),
                  const SizedBox(width: 6),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text("Login Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );  
  }
}